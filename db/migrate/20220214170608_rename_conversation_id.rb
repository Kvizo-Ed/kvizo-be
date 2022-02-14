class RenameConversationId < ActiveRecord::Migration[5.2]
  def change
    rename_column :live_questions, :conversation_id, :live_quiz_id
  end
end
