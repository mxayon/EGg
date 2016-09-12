class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :title
      t.string :starting_mood
      t.integer :level
      t.boolean :verbal_word_approximation
      t.boolean :physically_identify
      t.string :good_choices
      t.string :action
      t.string :observations
      t.string :comments
      t.date :date

      t.timestamps
    end
  end
end
