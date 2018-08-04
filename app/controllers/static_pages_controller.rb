class StaticPagesController < ApplicationController
  def home
    @students = User.where(role: :student).page(params[:page]).per 20
    @teachers = User.where(role: :teacher).page(params[:page]).per 20
  end
end
