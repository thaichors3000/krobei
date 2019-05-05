class Teacher < ApplicationRecord
  enum gender: %i[female male]

  has_many :courses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :date_of_birth, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
