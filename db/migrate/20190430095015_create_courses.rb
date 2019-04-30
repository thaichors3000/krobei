class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name, null: false, limit: 100
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.belongs_to :teacher, null: false

      t.timestamps
    end
  end
end
