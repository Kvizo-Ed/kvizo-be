require 'rails_helper'

RSpec.describe PossibleAnswer, type: :model do
  context 'associations' do
    it { should belong_to :question }
  end
  context 'validations' do
    it { should validate_presence_of(:text) }
  end
end
