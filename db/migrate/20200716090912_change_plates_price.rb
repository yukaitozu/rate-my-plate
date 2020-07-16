class ChangePlatesPrice < ActiveRecord::Migration[6.0]
  def change
    change_column :plates, :price, :integer
  end
end
