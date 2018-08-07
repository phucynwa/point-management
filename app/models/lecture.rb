class Lecture < ApplicationRecord
  has_many :courses
  has_many :learnings, through: :courses
end
