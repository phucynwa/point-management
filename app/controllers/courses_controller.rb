class CoursesController < ApplicationController
  include CoursesHelper
  before_action :logged_in_user, except: :index
  before_action :teacher_require, except: %i(index show)
  before_action :load_course, only: %i(show edit update)
  before_action :own_teacher, only: %i(edit update)

  def index
    @courses = Course.by_semester.page(params[:page]).per 20
  end

  def show
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers["Content-Disposition"] = "attachment; filename=\"#{@course.name}.xlsx\""
      }
    end
  end

  def new
    @course = Course.new
    load_addition
  end

  def create
    @course = Course.new course_params
    @course.user_id = current_user.id
    if @course.save
      flash[:success] = "Successful !"
      redirect_to courses_path
    else
      load_addition
      render :new
    end
  end

  def edit; end

  def update
    if params[:course][:file_upload].content_type == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
      @course.file_upload.attach params[:course][:file_upload]
      Learning.update_imported_store @course.file_upload, @course.id
      flash[:success] = "Success updating point file !"
      redirect_to @course
    else
      flash.now[:warning] = "Invalid file."
      render :edit
    end
  end

  private

  def course_params
    params.require(:course).permit :name, :lecture_id, :semester_id
  end

  def load_course
    @course = Course.find_by id: params[:id]
    return if @course
    flash[:danger] = "Invalid !"
    redirect_to courses_path
  end

  def load_addition
    @lectures = Lecture.all
    @semesters = Semester.all.order(id: :desc)
  end

  def own_teacher
    @course = Course.find_by id: params[:id]
    return if current_user? @course.user
    flash[:danger] = "Invalid !"
    redirect_to @course
  end
end
