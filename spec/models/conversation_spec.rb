require 'rails_helper'

RSpec.describe Conversation, type: :model do
  context 'associations' do
    it { should have_many :messages }
  end
end
