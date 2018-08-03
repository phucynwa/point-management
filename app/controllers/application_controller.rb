class ApplicationController < ActionController::Base
  include SessionsHelper

  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = t "You cannot."
    redirect_to login_path
  end

  def not_logged_in_user
    return unless logged_in?
    flash[:warning] = "Invalid !"
    redirect_to root_path
  end
end
