class AddQuizAttributesToLiveQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :live_quizzes, :subject, :string
    add_column :live_quizzes, :topic, :string
    add_column :live_quizzes, :quiz_type, :string
    add_column :live_quizzes, :grade, :integer
    add_reference :live_quizzes, :user, index: true
  end
end
