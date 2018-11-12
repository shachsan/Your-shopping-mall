class CreateProduct < ActiveRecord::Migration

  def change
    create_table :products do |t|
      t.float :price
      t.integer :quantity
      t.string :name
      t.integer :category_id
    end
  end
end
