class Teacher < ApplicationRecord
  enum gender: %i[female male]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :date_of_birth, presence: true
end
