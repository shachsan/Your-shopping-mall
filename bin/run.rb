require_relative "run_helper.rb"
require_relative "../app/models.customer.rb"
require_relative "../app/models.product.rb"

shopping_cart = []

puts "welcome, we have the biggest selection. please chooose a product from the list"

puts "#{Product.all.name}"

selection = gets.chomp

selected_product = Product.find_by(name: selection)
  shopping_cart << {id: selected_product.id, price: selected_product.price, name: selected_product.name}

  puts "please select the quantity"

  shopping_cart.first[:quantity] = gets.chomp

#end of shopping

Customer.first.create_order(shopping_cart)

order_total(shopping_cart).each do |key, value|
puts "#{key} at #{value}"

end
