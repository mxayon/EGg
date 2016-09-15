class AddInventoryOfFavoritesToLearner < ActiveRecord::Migration[5.0]
  def change
    add_column :learners, :inventory_of_favorites, :string
  end
end
