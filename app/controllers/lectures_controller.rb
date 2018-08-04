class LecturesController < ApplicationController
  before_action :logged_in_user

  def index
    @lectures = Lecture.all.page(params[:page]).per 20
  end
end
