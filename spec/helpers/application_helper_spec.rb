require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#navbar_items' do
    it 'has 4 items' do
      expect(helper.navbar_items.size).to eq 4
    end
  end
end
