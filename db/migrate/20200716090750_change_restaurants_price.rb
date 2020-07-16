class ChangeRestaurantsPrice < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :price, :integer
  end
end
