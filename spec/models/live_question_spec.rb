require 'rails_helper'

RSpec.describe LiveQuestion, type: :model do
  context 'associations' do
    it { should belong_to :live_quiz }
  end
end
