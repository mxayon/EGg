class AddLearnerReferenceToLogs < ActiveRecord::Migration[5.0]
  def change
    add_reference :logs, :learner, foreign_key: true
  end
end
