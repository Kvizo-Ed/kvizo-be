class AddQuizTypeToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :quiz_type, :string
  end
end
