class CreateLearnings < ActiveRecord::Migration[5.2]
  def change
    create_table :course_students do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.float :midterm_point
      t.float :final_point
      t.float :summary_point
      t.timestamps
    end
  end
end
