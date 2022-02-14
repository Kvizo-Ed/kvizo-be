require 'rails_helper'

RSpec.describe LiveQuiz, type: :model do
  context 'associations' do
    it { should have_many :live_questions }
  end
end
