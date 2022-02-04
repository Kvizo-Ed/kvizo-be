require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should have_many :possible_answers }
  it { should belong_to :multi }
end
