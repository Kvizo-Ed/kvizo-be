class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :quiz, foreign_key: true
      t.string :question_text
      t.string :correct_answer
      t.string :question_type

      t.timestamps
    end
  end
end
