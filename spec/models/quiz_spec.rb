require 'rails_helper'

RSpec.describe Quiz, type: :model do
  context 'associations' do
    it { should have_many :questions }
    it { should belong_to :user }
  end

  context 'validations' do
    it { should validate_presence_of(:subject) }
    it { should validate_presence_of(:topic) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:grade) }
  end
end
