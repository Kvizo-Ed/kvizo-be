FactoryBot.define do
  factory :quiz do
    user_id { 1 }
    subject { Faker::Educator.subject }
    topic { Faker::Educator.subject }
    grade { Faker::Number.between(from: 0, to: 12) }
  end
end
