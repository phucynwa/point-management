class Learning < ApplicationRecord
  belongs_to :course
  belongs_to :user
  scope :by_student, ->(student_id){where user_id: student_id}
end
