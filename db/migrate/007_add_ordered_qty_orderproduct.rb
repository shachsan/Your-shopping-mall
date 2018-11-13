class AddOrderedQtyOrderproduct < ActiveRecord::Migration[4.2]
  def change
    add_column :orderproducts, :ordered_qty, :integer
  end
end
