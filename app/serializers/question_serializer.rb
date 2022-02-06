class QuestionSerializer
  include JSONAPI::Serializer
  attributes :question_text,
             :question_type,
             :correct_answer
end