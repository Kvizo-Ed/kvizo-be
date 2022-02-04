require 'rails_helper'

RSpec.describe Multi, type: :model do
  it { should have_many :questions }
  it { should belong_to :user }
end
