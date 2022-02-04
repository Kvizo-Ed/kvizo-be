class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.references :user, foreign_key: true
      t.string :subject
      t.string :topic
      t.string :title
      t.integer :grade

      t.timestamps
    end
  end
end
