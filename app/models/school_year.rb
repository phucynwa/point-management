class SchoolYear < ApplicationRecord
  has_many :semesters, dependent: :destroy
  has_many :courses, through: :semesters
end
