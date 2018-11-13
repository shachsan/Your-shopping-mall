require_relative './dumy_data'
class Product < ActiveRecord::Base
  belongs_to :category
  has_many :orderproducts
  has_many :orders, through: :orderproducts

  def self.convert(products)
    new_array = []
    n = 0
  products[0..50].each do |product|
    new_array << {}
    new_array[n][:name] = product[:item]
    new_array[n][:price] = product[:price][2..:price.length].to_f 
    new_array[n][:quantity] = rand(0..50)
    n +=1
  end
  new_array
  end

  def self.new_data
    convert(dumy_data)
  end


end
