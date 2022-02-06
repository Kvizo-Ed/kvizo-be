require 'rails_helper'

RSpec.describe Question, type: :model do
  context 'associations' do
    it { should have_many :possible_answers }
    it { should belong_to :quiz }
  end
  
  context 'validations' do
    it { should validate_presence_of(:question_text) }
    it { should validate_presence_of(:correct_answer) }
    it { should validate_presence_of(:question_type) }
  end
end
