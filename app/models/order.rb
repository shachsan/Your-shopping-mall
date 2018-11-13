class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :orderproducts
  has_many :products, through: :orderproducts

def select_item(product_id, quantity)
  #create new itemProduct instance without saving with quantity
  Orderproduct.new(self.id , product_id, quantity)
end







end
