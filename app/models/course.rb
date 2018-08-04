class Course < ApplicationRecord
  belongs_to :semester
  belongs_to :user
  belongs_to :lecture
  has_many :learnings
  scope :by_created, ->{order created_at: :desc}
  scope :by_time, ->{order semester_id: :desc}

  validates :name, :lecture_id, :semester_id, presence: true
end
