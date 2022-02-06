FactoryBot.define do
  factory :question do
    quiz
    question_text { Faker::Lorem.question }
    correct_answer { Faker::Lorem.sentence }
    question_type { ["TF", "Multi"].sample(1) }
  end
end
