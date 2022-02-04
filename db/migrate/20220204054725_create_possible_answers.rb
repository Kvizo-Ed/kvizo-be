class CreatePossibleAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :possible_answers do |t|
      t.string :text
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
