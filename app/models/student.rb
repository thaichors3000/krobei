class Student < ApplicationRecord
  enum gender: %i[female male]

  validates :full_name, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :date_of_birth, presence: true
  validates :pearent_phone, presence: true
  validates :address, presence: true
end