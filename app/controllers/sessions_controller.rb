class SessionsController < ApplicationController
  before_action :not_logged_in_user, only: %i(new create)

  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate params[:session][:password]
      log_in user
      params[:session][:remember_me] == "1" ?
        remember(user) : forget(user)
      redirect_back_or user
    else
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end
end
