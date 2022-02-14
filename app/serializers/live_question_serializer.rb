class LiveQuestionSerializer < ActiveModel::Serializer
  attributes :id,
             :live_quiz_id,
             :question_type,
             :question_text,
             :correct_answer,
             :created_at
end