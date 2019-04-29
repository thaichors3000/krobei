class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :full_name, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.integer :gender, default: 0
      t.date :date_of_birth, null: false
      t.string :pearent_phone, null:false
      t.string :address, null: false
    end
  end
end
