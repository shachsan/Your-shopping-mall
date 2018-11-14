
require "highline/import"
# require "tty-prompt"
require_relative "../app/shopping_cart.rb"

# prompt = TTY::Prompt.new
def menu(customer)
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

    customer_menu_choice = ask("Please select from above menu")
    case customer_menu_choice
      when "1"
        "Coming Soon"
      when "2"
        shopping_cart(customer)
      when "3"
        customer.order_history
      when "4"
        "Coming Soon"
      when "5"
        puts "Coming Soon"
      when "6"
        puts "Thank you for your time with us!"
        puts "You are being logged out.... "
        sleep(5)
        prompt
      else
        "Please make correct choice by entering number for each menu option"
      end
end

def main_screen(customer)
    menu(customer)
    # shopping_cart(customer)
end
