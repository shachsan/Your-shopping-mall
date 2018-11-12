class CreateOrder < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.integer :order_product_id
      t.float :payment
    end
   end
end
