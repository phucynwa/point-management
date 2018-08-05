class CoursesController < ApplicationController
  include CoursesHelper
  before_action :logged_in_user, except: :index
  before_action :teacher_require, except: %i(index show)
  before_action :load_course, only: %i(show edit update)
  before_action :own_teacher, only: %i(edit update)

  def index
    if params[:keyword]
      @keyword = params[:keyword].delete("'")
      keyword1 = @keyword.tr("dD ", "%%%")
      keyword = safe_keyword @keyword
      @courses = Course.joins(:lecture).joins(:user).where("(CONCAT('lớp', lectures.name, 'thầy cô giáo viên giảng viên:', users.name) LIKE '%#{keyword1}%') OR (CONCAT('lớp', users.name, lectures.name, courses.name, 'thầy cô giáo viên giảng viên:', users.name, lectures.name) LIKE '%#{keyword}%')").order(semester_id: :desc).distinct
      @courses_count = @courses.count
      @courses = @courses.page(params[:page]).per 10
    else
      @courses = Course.by_semester.page(params[:page]).per 20
    end
    respond_to do |format|
      format.html {render :index}
      format.js {}
    end
  end

  def show
    @learnings = @course.learnings.joins(:user).order(sort_vietnamese)
    numerator = {}
    @learnings.each_with_index do |learning, index|
      numerator[learning.id] = index + 1
      learning.id = numerator[learning.id]
    end
    if params[:name]
      @name = params[:name]
      name = safe_keyword @name
      @learnings = @learnings.where("name LIKE '%#{name}%'")
      @learnings.each do |learning|
        learning.id = numerator[learning.id]
      end
    end
    respond_to do |format|
      format.html
      format.js {}
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
