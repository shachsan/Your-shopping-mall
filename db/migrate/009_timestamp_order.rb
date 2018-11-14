class TimestampOrder < ActiveRecord::Migration[4.2]
  def change
    remove_column :orders, :order_date
    add_column :orders, :created_at, :datetime
  end
end
