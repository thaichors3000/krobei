require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:parents_phone) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:date_of_birth) }
  end

  describe '#full_name' do
    subject { described_class.new(first_name: 'Thaichor', last_name: 'Seng') }

    it 'returns full_name' do
      expect(subject.full_name).to eq 'Thaichor Seng'
    end
  end

  describe '#has_course?' do
    let(:course) { create(:course) }
    subject { create(:student)  }

    context 'when has course' do
      it 'returns true' do
        subject.courses = [course]

        expect(subject.has_course?(course)).to eq true
      end
    end

    context 'when no course' do
      it 'returns false' do
        expect(subject.has_course?(course)).to eq false
      end
    end
  end
end
