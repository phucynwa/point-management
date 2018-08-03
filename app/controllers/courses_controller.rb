class CoursesController < ApplicationController
  def index
    @courses = Course.page(params[:page]).per 20
  end
end
