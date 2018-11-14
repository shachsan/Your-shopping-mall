
require "highline/import"

def welcome
puts "Welcome to your shopping mall"
c_username = ask("Enter your username? ", String)
c_password = ask("Enter your password:  ") { |q| q.echo = "*" }
puts "Please select from the following options"
shopping_cart
end


def shopping_cart(customer)

  shopping_cart = []

  puts "welcome, we have the biggest selection. please chooose a product from the list"

  # puts "#{Product.all.name}"

  order_in_progress = nil
  while order_in_progress != 2 ||order_in_progress != "checkout"
    user_item = ask("Enter product name:", String)
    item_in_stock = Product.find_by(name:user_item)
    if item_in_stock
      qty = ask("Qty:", Integer)
      shopping_cart << [item_in_stock.id, qty]
    else
      puts "Item not found! Please enter the item name again"
      next
    end
    order_in_progress = ask("1. continue      2. checkout")
  end

  customer.customer_selection(shopping_cart)


  #end of shopping

#   customer.create_order(shopping_cart)
#
#   order_total(shopping_cart).each do |key, value|
#   puts "#{key} at #{value}"
#
#   end
# end


# begin
#   puts
#   loop do
#     choose do |menu|
#       menu.prompt = "Please select: "
#       menu.choice("Order From our catelog") { customer_login_prompt() }
#       menu.choice(:Adminstrator) { admin_login_prompt() }
#       menu.choice(:Quit, "Exit program.") { exit }
#     end
#   end
end
