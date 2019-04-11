class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.integer :gender
      t.date :date_of_birth

      t.timestamps
    end
  end
end
