
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
  puts "6. Log Out"

  puts
  loop do
    customer_menu_choice = ask("Please select from above menu")
    case customer_menu_choice
      when 1
        "Coming Soon"
      when 2
        
      when 3
        self.order_history
      when 4
        "The tank is almost full."
      when 5
        puts "Coming Soon"
      when 6
        puts "Thank you for your time with us!"
        puts "You are being logged out.... "
        sleep(5)
        prompt

      else
        "Please make correct choice by entering number for each menu option"
      end
    end


end

def main_screen(customer)
    active_customer = customer
    menu
    shopping_cart(active_customer)
end
