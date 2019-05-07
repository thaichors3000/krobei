require 'rails_helper'

RSpec.describe Enrolment, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to :student }
    it { is_expected.to belong_to :course }
  end

  describe 'validations' do
    subject { described_class.new(student_id: 1, course_id: 1) }

    it { is_expected.to validate_uniqueness_of(:student_id).scoped_to(:course_id) }
  end
end
