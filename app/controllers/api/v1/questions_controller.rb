class Api::V1::QuestionsController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def create
    question = Question.new(quiz_id: "1", question_text: params[:question_text], question_type: "TF", correct_answer: "T")
    if question.save!
      ActionCable.server.broadcast "questions_channel", question: question.question_text
    end
  end

end