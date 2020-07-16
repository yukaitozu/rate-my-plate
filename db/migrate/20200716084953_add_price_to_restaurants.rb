class AddPriceToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :price, :float
  end
end
