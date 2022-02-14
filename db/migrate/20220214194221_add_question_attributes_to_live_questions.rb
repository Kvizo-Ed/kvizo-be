class AddQuestionAttributesToLiveQuestions < ActiveRecord::Migration[5.2]
  def change
    rename_column :live_questions, :text, :question_text
    add_column :live_questions, :correct_answer, :string
    add_column :live_questions, :question_type, :string
  end
end
