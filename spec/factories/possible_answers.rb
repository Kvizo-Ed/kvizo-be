FactoryBot.define do
  factory :possible_answer do
    question
    text { Faker::Lorem.sentence }
  end
end
