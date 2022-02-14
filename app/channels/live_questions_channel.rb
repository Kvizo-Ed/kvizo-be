class LiveQuestionsChannel < ApplicationCable::Channel
  def subscribed
    live_quiz = LiveQuizzes.find(params[:live_quiz])
    stream_for live_quiz
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
