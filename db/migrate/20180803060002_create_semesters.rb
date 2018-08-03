class CreateSemesters < ActiveRecord::Migration[5.2]
  def change
    create_table :semesters do |t|
      t.string :name
      t.references :school_year, foreign_key: true

      t.timestamps
    end
  end
end
