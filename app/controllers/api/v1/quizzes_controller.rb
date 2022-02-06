class Api::V1::QuizzesController < ApplicationController
  def create
    user = User.find(params[:user_id])
    quiz = user.quizzes.new(quiz_params)

    if quiz.save
      render json: QuizSerializer.new(quiz), status: 201
    else
      render json: {error: 'Invalid Quiz'}, status: 400
    end
  end
end


private

    def quiz_params
      params.permit(:subject, :topic, :title, :grade, :user_id)
    end