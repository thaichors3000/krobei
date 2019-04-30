require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to :teacher }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_length_of(:name).is_at_most(100) }
    it { is_expected.to validate_presence_of :start_date }
    it { is_expected.to validate_presence_of :end_date }
  end
end
