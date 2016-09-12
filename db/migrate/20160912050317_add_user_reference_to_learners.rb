class AddUserReferenceToLearners < ActiveRecord::Migration[5.0]
  def change
    add_reference :learners, :user, foreign_key: true
  end
end
