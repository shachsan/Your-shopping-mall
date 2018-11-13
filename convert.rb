require 'pry'

def convert(products)
  new_array = []
  n = 0
products[0..50].each do |product|
  new_array << {}
  new_array[n][:name] = product[:item]
  new_array[n][:price] = product[:price]
  new_array[n][:quantity] = rand(0..50)
  n +=1
end
binding.pry
end
