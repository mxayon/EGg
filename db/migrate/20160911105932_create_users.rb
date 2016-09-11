class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :case_manager
      t.boolean :speech_therapist
      t.boolean :occupational_therapist
      t.boolean :parent_guardian
      t.string :image

      t.timestamps
    end
  end
end
