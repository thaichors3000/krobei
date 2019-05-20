class Enrolment < ApplicationRecord
  before_save :validate_max_students
  belongs_to :student
  belongs_to :course

  validates :student_id, uniqueness: { scope: [:course_id] }
  validate :validate_max_students
  # byebug
  def validate_max_students
    errors.add(:reach_max_students, "Unable to register more student (max: #{course.max_students})") if course.students.count >= course.max_students
  end

end
