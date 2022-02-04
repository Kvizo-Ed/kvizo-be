require 'rails_helper'

RSpec.describe Quiz, type: :model do
  it { should have_many :questions }
  it { should belong_to :user }
end
