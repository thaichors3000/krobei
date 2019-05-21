class Course < ApplicationRecord
  belongs_to :teacher
  
  has_many :enrolments
  has_many :students, through: :enrolments, dependent: :restrict_with_error

  validates :name, presence: true
  validates :name, length: { maximum: 100 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  
end
