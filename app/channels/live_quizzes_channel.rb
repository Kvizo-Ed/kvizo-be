class LiveQuizzesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "live_quizzes_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
