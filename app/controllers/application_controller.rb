class ApplicationController < ActionController::Base
  include ApplicationHelper
  include SessionsHelper

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = "Invalid !"
    redirect_to login_path
  end

  def not_logged_in_user
    return unless logged_in?
    flash[:warning] = "Invalid !"
    redirect_to root_path
  end

  def student_require
    return if current_user.student?
    flash[:warning] = "Invalid !"
    redirect_to root_path
  end

  def teacher_require
    return if current_user.teacher?
    flash[:warning] = "Invalid !"
    redirect_to root_path
  end
end
