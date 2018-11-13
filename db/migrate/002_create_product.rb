class CreateProduct < ActiveRecord::Migration[4.2]

  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.integer :category_id
    end
  end
end
