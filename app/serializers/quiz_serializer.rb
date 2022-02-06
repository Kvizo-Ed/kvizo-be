class QuizSerializer
  include JSONAPI::Serializer
  attributes :subject,
             :topic,
             :title,
             :grade,
             :user_id

  # attribute :message do |object|
  #   'Quiz has been created!'
  # end

  attribute :questions do |quiz|
    quiz.questions.map do |question|
      {
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