class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :lecture, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
