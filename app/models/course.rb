class Course < ApplicationRecord
  belongs_to :semester
  belongs_to :user
  belongs_to :lecture
  has_many :learnings
end
