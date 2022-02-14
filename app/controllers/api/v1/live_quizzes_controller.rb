class Api::V1::LiveQuizzesController < ApplicationController
  def index
    live_quizzes = LiveQuiz.all
    render json: live_quizzes
  end

  def create
    live_quiz = LiveQuiz.new(live_quiz_params)
    if live_quiz.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        LiveQuizSerializer.new(live_quiz)).serializable_hash
      ActionCable.server.broadcast 'live_quizzes_channel', serialized_data
      head :ok
    end
  end

private
  
  def live_quiz_params
    params.require(:live_quiz).permit(:subject, :topic, :title, :grade, :user_id, :quiz_type)
  end
end
