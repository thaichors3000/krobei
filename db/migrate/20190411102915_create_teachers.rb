class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.integer :gender, default: 0
      t.date :date_of_birth, null: false

      t.timestamps
    end
  end
end
