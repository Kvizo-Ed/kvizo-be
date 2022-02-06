class QuizSerializer
  include JSONAPI::Serializer
  attributes :subject,
             :topic,
             :title,
             :grade,
             :user_id
  attribute :message do |object|
    'Quiz has been created!'
  end
end