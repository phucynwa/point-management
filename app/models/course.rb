class Course < ApplicationRecord
  has_one_attached :file_upload
  belongs_to :semester
  belongs_to :user
  belongs_to :lecture
  has_many :learnings, dependent: :destroy
  has_many :users, through: :learnings

  scope :by_created, ->{order created_at: :desc}
  scope :by_time, ->{order semester_id: :desc}
  scope :by_semester, ->{order semester_id: :desc}

  validates :name, :lecture_id, :semester_id, presence: true
  before_update :check_file_upload

  def check_file_upload
    return if file_upload.nil?
    file_upload.content_type.in %i(application/vnd.openxmlformats-officedocument.spreadsheetml.sheet application/vnd.ms-excel)
  end
end
