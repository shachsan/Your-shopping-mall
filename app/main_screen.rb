
require "highline/import"
require_relative "../app/shopping_cart.rb"


def menu
  system('clear')
  puts "welcome, we have the biggest selection. please chooose a product from the list"

  puts "Please select from the following options"
  puts "1. Shop from our catalog"
  puts "2. Shop by Product Name"
  puts "3. Check your order history"
  puts "4. Return items"
  puts "5. Contact Us"
  puts "6. Exit"

  
end

def main_screen(customer)
    menu
    shopping_cart(customer)
end
