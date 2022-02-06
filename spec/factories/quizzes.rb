FactoryBot.define do
  factory :quiz do
    user
    subject { Faker::Educator.subject }
    topic { Faker::Educator.subject }
    title { Faker::Lorem.sentence }
    grade { Faker::Number.between(from: 0, to: 12) }
  end
end
