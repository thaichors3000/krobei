class Course < ApplicationRecord
  belongs_to :teacher

  validates :name, presence: true
  validates :name, length: { maximum: 100 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
