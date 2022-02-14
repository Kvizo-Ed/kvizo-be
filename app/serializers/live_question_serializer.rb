class LiveQuestionSerializer < ActiveModel::Serializer
  attributes :id,
             :live_quiz_id,
             :text,
             :created_at
end