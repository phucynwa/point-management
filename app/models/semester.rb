class Semester < ApplicationRecord
  belongs_to :school_year
  has_many :courses
end
