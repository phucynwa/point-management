class UsersController < ApplicationController
  before_action :load_user, except: %i(new create)

  def show
    return unless @user.student?
    @courses = Course.by_time.includes(:learnings).where(learnings:
      {user_id: @user.id})
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Successful !"
      redirect_to :new
    else
      flash.now[:warning] = "Fail !"
      render :new
    end
  end

  def edit; end

  def update
    if @user.update_attributes user_params
      flash[:success] = "Updated !"
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :code, :birthday, :password,
      :password_confirmation
  end

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:warning] = "Not exist !"
    redirect_to root_path
  end
end
