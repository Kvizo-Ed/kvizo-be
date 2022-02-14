class Api::V1::LiveQuestionsController < ApplicationController
  def create
    live_question = LiveQuestion.new(live_question_params)
    live_quiz = LiveQuiz.find(live_question_params[:live_quiz_id])
    if live_question.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        LiveQuestionSerializer.new(live_question)
      ).serializable_hash
      LiveQuestionsChannel.broadcast_to live_quiz, serialized_data
      head :ok
    end
  end
  
  private
  
  def live_question_params
    params.require(:live_question).permit(:question_text, :question_type, :correct_answer, :live_quiz_id)
  end
end