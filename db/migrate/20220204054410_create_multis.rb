class CreateMultis < ActiveRecord::Migration[5.2]
  def change
    create_table :multis do |t|
      t.string :subject
      t.string :topic
      t.string :title
      t.integer :grade
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
