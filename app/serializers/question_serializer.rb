class QuestionSerializer
  include JSONAPI::Serializer
  attributes :id,
             :question_text,
             :question_type,
             :correct_answer

  attribute :possible_answers do |question|
      question.possible_answers.map do |answer|
        answer.text
      end
  end
end