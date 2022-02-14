class LiveQuizSerializer < ActiveModel::Serializer
  attributes :id,
             :title
  has_many :live_questions
end