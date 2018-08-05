class LearningsController < ApplicationController
  before_action :load_learning, only: :destroy
  before_action :logged_in_user, :student_require

  def create
    @learning = Learning.new learning_params
    if @learning.save
      flash[:success] = "Successful !"
      redirect_to current_user
    else
      flash[:warning] = "Fail !"
      redirect_to courses_path
    end
  end

  def destroy
    if @learning.destroy
      flash[:success] = "Successful !"
      redirect_to current_user
    else
      flash[:danger] = "Fail !"
      redirect_to courses_path
    end
  end

  private

  def learning_params
    params.permit :course_id, :user_id
  end

  def load_learning
    @learning = Learning.find_by id: params[:id]
    return if current_user? @learning.user
    flash[:danger] = "Invalid !"
    redirect_to courses_path
  end
end
