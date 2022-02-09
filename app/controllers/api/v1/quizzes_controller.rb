class Api::V1::QuizzesController < ApplicationController
  include ExceptionHandler
  def index
    render json: QuizSerializer.new(Quiz.all), status: 200
  end

  def show
    quiz = Quiz.find(params[:id])

    render json: QuizSerializer.new(quiz), status: 200
  end

  def create
    user = User.find(params[:user_id])
    quiz = user.quizzes.create!(quiz_params)
    
    render json: QuizSerializer.new(quiz), status: 201
  end

  def update
    quiz = Quiz.find(params[:id])
    params[:questions].each do |question_attributes|
      question = quiz.questions.build(
        question_text: question_attributes[:questionText],
        question_type: question_attributes[:questionType],
        correct_answer: question_attributes[:correctAnswer],
      )
      question_attributes[:possibleAnswers].each do |answer|
        question.possible_answers.build(
          text: answer
        )
      end
    end

    quiz.save!

    render json: QuizSerializer.new(quiz), status: 201
  end

private

    def quiz_params
      params.permit(:subject, :topic, :title, :grade, :user_id)
    end
end