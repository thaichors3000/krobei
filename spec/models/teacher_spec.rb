require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name)}
    it { is_expected.to validate_presence_of(:last_name)}
    it { is_expected.to validate_presence_of(:phone)}
    it { is_expected.to validate_presence_of(:email)}
    it { is_expected.to validate_presence_of(:gender)}
    it { is_expected.to validate_presence_of(:date_of_birth)}
  end
end
