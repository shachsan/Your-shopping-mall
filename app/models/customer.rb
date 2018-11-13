class Customer < ActiveRecord::Base
  has_many :orders
  has_many :orderproducts, through: :orders

def new_order
  Order.create
end 

end
