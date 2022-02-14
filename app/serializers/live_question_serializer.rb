class LiveQuestionSerializer < ActiveModel::Serializer
  attributes :id,
             :conversation_id,
             :text,
             :created_at
end