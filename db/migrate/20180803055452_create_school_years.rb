class CreateSchoolYears < ActiveRecord::Migration[5.2]
  def change
    create_table :school_years do |t|
      t.integer :year

      t.timestamps
    end
  end
end
