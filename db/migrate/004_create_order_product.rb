class CreateOrderProduct < ActiveRecord::Migration[4.2]

  def change
    create_table :orderproducts do |t|
      t.integer :order_id
      t.integer :product_id
    end
  end

end
