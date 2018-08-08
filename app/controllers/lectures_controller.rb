class LecturesController < ApplicationController
  before_action :load_lecture, only: :show

  def index
    @lectures = Lecture.all.page(params[:page]).per 20
  end

  def show; end

  private

  def load_lecture
    @lecture = Lecture.find_by id: params[:id]
    return if @lecture
    flash[:warning] = "Not found."
    redirect_to root_path
  end
end
