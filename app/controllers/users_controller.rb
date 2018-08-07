class UsersController < ApplicationController
  before_action :logged_in_user, except: %i(index new create)
  before_action :load_user, except: %i(index new create)

  def index
    @teachers = User.where(role: :teacher)
    @name = params[:name]
    name = safe_keyword @name
    @users = User.where("name LIKE '%#{name}%'")
    @users = @users.page(params[:page]).per 10
    respond_to do |format|
      format.html {render :index}
      format.js {}
    end
  end

  def show; end

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
    params.require(:user).permit :name, :birthday, :password,
      :password_confirmation
  end

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:warning] = "Not exist !"
    redirect_to root_path
  end
end
