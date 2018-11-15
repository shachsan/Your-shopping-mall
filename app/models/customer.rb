
# require "highline/import"
require_relative "../main_screen.rb"

class Customer < ActiveRecord::Base
  extend CommonMethods

  # attr_accessor :order_total
  has_many :orders
  has_many :orderproducts, through: :orders
  has_many :products, through: :orderproducts



    def self.validate_login(username, password)
      self.find_by(username:username, password:password)
    end


  ##As a customer, I should be able to place an order
  def customer_selection(customer_items) #[[product_id, qty]]
    @@order_total = 0
    prompt = TTY::Prompt.new
    system('clear')
    puts "Your Shopping Cart"
    puts "*"*40
      # binding.pry
    customer_items.each do |item_qty|
      puts "ProductId: #{item_qty[0]}"
      puts "Product Name: #{Product.where(id:item_qty[0]).first.name}"
      puts "Qty: #{item_qty[1]}"
      @@order_total += Product.where(id:item_qty[0]).first.price * item_qty[1]

    end
      puts "*"*70
      puts "Order Total: #{@@order_total}    Total item:#{customer_items.count}"
      puts "*"*70
      puts
      proceed_order = prompt.select("Would you like to proceed with this order?",
        ["Yes", "Continue Shopping", "Main Menu", "Exit"])

      if proceed_order == "Yes"
        $customer.place_order(customer_items)
      elsif proceed_order == "Continue Shopping" || proceed_order == "Main Menu"
        main_menu # Go back to main screen
      elsif proceed_order == "Exit"
        puts "Please note, your shopping cart will not be saved after you exit"
        CommonMethods.logout
      end

  end

  def place_order(customer_items)#[[product_id, qty]]
    prompt = TTY::Prompt.new
    orderid = Order.create(customer_id:self.id, order_total:@@order_total).id
    customer_items.each do |item_qty|
      Orderproduct.create(order_id:orderid, product_id:item_qty[0], ordered_qty:item_qty[1])
      update_qty = Product.where(id:item_qty[0]).first.quantity -= item_qty[1]
      Product.where(id:item_qty[0]).first.update(quantity:update_qty)
      $shopping_cart_inprogress = []
    end
    system('clear')
    puts "Thank You! for placing order with us. Your order is currently being processed"
    puts
    puts "Your Order Number is: #{orderid}"
    puts "*"*35
    user_selection_after_placing_order = prompt.select("What would like to do from here?", ["Main Menu", "Log Out", "Exit"])

    if user_selection_after_placing_order == "Main Menu"
      main_menu
    elsif user_selection_after_placing_order == "Log Out"
      CommonMethods.logout
    elsif user_selection_after_placing_order == "Exit"
      exit
    end
  end


  ###As a customer, I should be able to view all my order history
  def order_history
    prompt = TTY::Prompt.new
    self.orders.each do |order|
      orderid=order.id
      puts "-"*50
      puts "Order Id: #{order.id}"
      puts "Order date: #{order.created_at}"
      puts "-"*50
      self.orderproducts.each do |orderproduct|
        if orderproduct.order_id == orderid
          puts "product name: #{Product.where(id:orderproduct.product_id).first.name}   Qty:   #{orderproduct.ordered_qty}"
        end
      end
      puts "*"*50
      puts "Order Total: #{order.order_total}"
      puts "*"*50
    end
    print "Total Number of Orders: #{self.orderproducts.count}    "
    # binding.pry
    print "Total Spent: #{self.orders.map{|order|order.order_total}.compact.reduce(:+)}"
    puts
    puts "*"*50
    user_selection = prompt.select("What would you like to do next?", %w(Main-Menu Log-Out Exit))
    if user_selection == "Main-Menu"
      main_menu
    elsif user_selection == "Log-Out"
      CommonMethods.logout
    elsif user_selection == "Exit"
      exit
    end

  end

end
