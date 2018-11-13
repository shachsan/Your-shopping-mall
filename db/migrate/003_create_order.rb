class CreateOrder < ActiveRecord::Migration[4.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :orderproduct_id
      t.float :payment
    end
   end
end
