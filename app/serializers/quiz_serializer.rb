class QuizSerializer
  include JSONAPI::Serializer
  attributes :subject,
             :topic,
             :title,
             :grade,
             :user_id,
             :quiz_type

  attribute :questions do |quiz|
    quiz.questions.map do |question|
      {
        questionId: question.id,
      questionText: question.question_text,
      questionType: question.question_type,
      correctAnswer: question.correct_answer,
    possibleAnswers: question.possible_answers.map do |answer|
        answer.text
      end
      }
    end
  end
end