class CoursesController < ApplicationController
  before_action :logged_in_user
  before_action :teacher_require, except: %i(index show)
  before_action :load_course, only: :show

  def index
    @courses = Course.by_created.page(params[:page]).per 10
  end

  def show
    @learnings = Learning.where(id: @course.id)
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

end
