class RenameMessagesToLiveQuestions < ActiveRecord::Migration[5.2]
  def change
    rename_table :messages, :live_questions
  end
end
