require 'rails_helper'

RSpec.describe PossibleAnswer, type: :model do
  it { should belong_to :question }
end
