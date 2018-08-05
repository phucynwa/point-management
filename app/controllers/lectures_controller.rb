class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all.page(params[:page]).per 20
  end
end
