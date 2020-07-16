class AddPriceToPlates < ActiveRecord::Migration[6.0]
  def change
    add_column :plates, :price, :float
  end
end
