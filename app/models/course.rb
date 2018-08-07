class Course < ApplicationRecord
  has_one_attached :file_upload
  belongs_to :semester
  belongs_to :user
  belongs_to :lecture
  has_many :learnings, dependent: :destroy
  has_many :users, through: :learnings

  delegate :school_year, to: :semester, allow_nil: true

  scope :by_created, ->{order created_at: :desc}
  scope :by_time, ->{order semester_id: :desc}
  scope :by_semester, ->{order semester_id: :desc}

  validates :name, :lecture_id, :semester_id, presence: true

  def teach_by? user
    self.user == user
  end
end
