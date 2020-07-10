class AddCommentToPlates < ActiveRecord::Migration[6.0]
  def change
    add_column :plates, :comment, :string
  end
end
