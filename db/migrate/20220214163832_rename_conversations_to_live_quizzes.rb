class RenameConversationsToLiveQuizzes < ActiveRecord::Migration[5.2]
  def change
    rename_table :conversations, :live_quizzes
  end
end
