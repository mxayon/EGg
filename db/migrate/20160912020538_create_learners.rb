class CreateLearners < ActiveRecord::Migration[5.0]
  def change
    create_table :learners do |t|
      t.string :name
      t.string :image
      t.string :age
      t.string :parent_guardian
      t.string :contact_info

      t.timestamps
    end
  end
end
