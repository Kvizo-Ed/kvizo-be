class Api::V1::QuestionsController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def create
    question = Question.find(params[:questionID])

    ActionCable.server.broadcast "questions_channel", question: QuestionSerializer.new(question)

    render json: {question: 'question sent!'}, status: 201
  end

end