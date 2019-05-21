class AddMaximumStudentsToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :max_students, :integer, default: 10
  end
end
