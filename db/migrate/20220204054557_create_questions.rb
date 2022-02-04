class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :correct_answer
      t.references :multi, foreign_key: true

      t.timestamps
    end
  end
end
