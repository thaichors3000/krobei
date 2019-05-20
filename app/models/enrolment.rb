class Enrolment < ApplicationRecord
  before_save :max_students

  belongs_to :student
  belongs_to :course

  validates :student_id, uniqueness: { scope: [:course_id] }
  validate :max_students

  def max_students
    errors.add(:max_students, "student is #{course.max_students}") if course.students.count >= course.max_students
  end
end
