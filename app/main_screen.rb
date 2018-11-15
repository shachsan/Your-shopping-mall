
# require "highline/import"
# require "tty-prompt"
require_relative "../app/shopping_cart.rb"
require_relative "./module/common_methods.rb"
# prompt = TTY::Prompt.new
def main_menu#(customer)
  prompt = TTY::Prompt.new
  system('clear')
  puts "welcome, we have the biggest selection. please chooose a product from the list"
  menu_opt = prompt.select("Please select from the following options",
    ["Shop from our catalog",
      "Shop by Product Name",
      "Check Price",
      "View Shopping Cart",
      "Check your order history",
      "Order Status",
      "Return items",
      "Contact Us",
      "Log Out",
      "Exit"
    ])

  puts

    # customer_menu_choice = ask("Please select from above menu")
    case menu_opt
      when "Shop from our catalog"
        Category.all_category
      when "Shop by Product Name"
        shopping_cart
      when "Check Price"
        Product.check_price
      when "View Shopping Cart"
        CommonMethods.shopping_inprogress
      when "Check your order history"
        $customer.order_history
      when "Order Status"
        puts "Coming Soon"
        puts
        puts "redirecting to main menu ...."
        sleep(3)
        main_menu
      when "Return items"
        puts "Coming Soon"
        puts
        puts "redirecting to main menu ...."
        sleep(3)
        main_menu
      when "Log Out"
        CommonMethods.logout
      when "Contact Us"
        puts "Coming Soon"
        puts
        puts "redirecting to main menu ...."
        sleep(3)
        main_menu

      when "Exit"
        puts "Good Bye! See You Soon!"
        sleep(3)
        exit
      end
end
