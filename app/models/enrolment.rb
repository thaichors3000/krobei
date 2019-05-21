class Enrolment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :student_id, uniqueness: { scope: [:course_id] }
  validate  :validate_max_students

  def validate_max_students
    if course && course.students.count >= course.max_students
      errors.add(:base, :max_records, max: course.max_students)
    end
  end
end
