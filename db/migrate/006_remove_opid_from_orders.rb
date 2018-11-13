class RemoveOpidFromOrders < ActiveRecord::Migration[4.2]
  def change
    remove_column :orders, :orderproduct_id
  end
end
