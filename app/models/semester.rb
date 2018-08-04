class Semester < ApplicationRecord
  belongs_to :school_year
  has_many :courses
  has_many :learnings, through: :courses
end
