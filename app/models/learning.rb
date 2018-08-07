class Learning < ApplicationRecord
  belongs_to :course
  belongs_to :user

  delegate :lecture, to: :course, allow_nil: true
  delegate :semester, to: :course, allow_nil: true

  scope :by_student, ->(student_id){where user_id: student_id}

  validates :user, uniqueness: {scope: :course}

  class << self
    def update_imported_store(file, course_id)
      spreadsheet = open_spreadsheet file
      learnings = Learning.where(course_id: course_id)
      (2..spreadsheet.last_row).each do |i|
        user_id = User.find_by code: spreadsheet.cell(i, 'C').to_i
        learnings.find_by(user_id: user_id)&.update_columns(
          midterm_point: spreadsheet.cell(i, 'E'),
          final_point: spreadsheet.cell(i, 'F'),
          summary_point: spreadsheet.cell(i, 'G'))
      end
      learnings.each do |learning|
        SendEmailJob.delay.perform_later(learning)
      end
    end

    def open_spreadsheet file
      Roo::Excelx.new(ActiveStorage::Blob.service.send(:path_for, file.blob.key), file_warning: :ignore)
    end
  end
end
