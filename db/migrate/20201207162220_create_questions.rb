class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :statement
      t.text :text
      t.string :answer
      t.integer :daily_access
      t.references :discipline, foreign_key: true

      t.timestamps
    end
  end
end
