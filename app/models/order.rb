class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :orderproducts
  has_many :products, through: :orderproducts
end
