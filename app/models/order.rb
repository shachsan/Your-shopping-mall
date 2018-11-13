class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :orderproducts
  has_many :products, through: :orderproducts

def select_item(product)
  #create new itemProduct instance without saving
  




end
