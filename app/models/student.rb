class Student < ApplicationRecord
  enum gender: %i[female male]

  has_many :enrolments
  has_many :courses, through: :enrolments
  has_many :courses, through: :enrolments, dependent: :restrict_with_error

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :parents_phone, presence: true
  validates :date_of_birth, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def has_course?(course)
    courses.exists?(course.id)
  end
end