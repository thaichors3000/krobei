class CreateEnrolments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrolments do |t|
      t.belongs_to :student, null: false
      t.belongs_to :course, null: false

      t.timestamps
    end

    add_index :enrolments, [:student_id, :course_id], unique: true
  end
end
