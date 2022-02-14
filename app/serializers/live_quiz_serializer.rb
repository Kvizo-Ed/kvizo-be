class LiveQuizSerializer < ActiveModel::Serializer
  attributes :id,
             :subject,
             :topic,
             :title,
             :grade,
             :user_id,
             :quiz_type
             
  has_many :live_questions
end