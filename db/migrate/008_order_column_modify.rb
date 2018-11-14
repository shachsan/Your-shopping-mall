class OrderColumnModify < ActiveRecord::Migration[4.2]
  def change
    remove_column :orders, :payment
    add_column :orders, :order_date, :datetime
    add_column :orders, :order_total, :float
  end
end
