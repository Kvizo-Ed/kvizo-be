require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'associations' do
    it { should belong_to :conversation }
  end
end
