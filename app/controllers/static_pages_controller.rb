class StaticPagesController < ApplicationController
  def home
    course_ids = ActiveStorage::Attachment.where(record_type: Course.name).pluck(:record_id)
    @courses = Course.find course_ids
  end
end
