class Customer < ActiveRecord::Base
  # attr_accessor :order_total
  has_many :orders
  has_many :orderproducts, through: :orders
  has_many :products, through: :orderproducts

  @@order_total = 0


  def self.validate_login(username, password)
    self.find_by(username:username, password:password)
  end

  # def self.order_total
  #   @@order_total
  # end

  ##As a customer, I should be able to place an order
  def customer_selection(customer_items) #[[product_id, qty]]
    #This method takes an instance of customer_selected_items which has following attributes:
        #productid, qty
    #Instance should be created as soon as customer finished selecting items

    #Once the customer finished selecting products
    #customer should be able to see list of items selected
    # order_total = 0
    customer_items.each do |item_qty|
      puts "ProductId: #{item_qty[0]}"
      puts "Product Name: #{Product.where(id:item_qty[0]).first.name}"
      puts "Qty: #{item_qty[1]}"
      @@order_total += Product.where(id:item_qty[0]).first.price * item_qty[1]
    end
      puts "******************************"
      puts "Order Total: #{@@order_total}"
      puts "******************************"
  end


  def create_order(shopping_cart)
    #is being passed the item id and quantity
    orderid = Order.create(customer_id: self.id).id
    shopping_cart.each do |product|
      Orderproduct.create(order_id: orderid, product_id: product[:id], ordered_qty: product[:quantity])
      update_qty = Product.where(id: product[:id]).first.quantity - product[:quantity]
      Product.where(id: product[:id]).first.update(quantity: update_qty)
    end
  end


  # def place_order(customer_items)#[[product_id, qty]]
  #   orderid = Order.create(customer_id:self.id, order_total:@@order_total).id
  #   # binding.pry
  #   customer_items.each do |item_qty|
  #     Orderproduct.create(order_id:orderid, product_id:item_qty[0], ordered_qty:item_qty[1])
  #     update_qty = Product.where(id:item_qty[0]).first.quantity -= item_qty[1]
  #     Product.where(id:item_qty[0]).first.update(quantity:update_qty)
  #   end
  #
  # end


  ###As a customer, I should be able to view all my order history
  def order_history
    ##should return all the orders for this customer
    # orders
    # products = Customer.where(id:self.id).first.products #returns array
    #
    # puts "CustomerId:#{self.id}"
    # puts "Customer Name: #{self.name}"

    self.orders.each do |order|
      orderid=order.id
      puts "**************************************************"
      puts "Order Id: #{order.id}"
      puts "Order date: #{order.created_at}"
      puts "**************************************************"
      self.orderproducts.each do |orderproduct|
        if orderproduct.order_id == orderid
          puts "product name: #{Product.where(id:orderproduct.product_id).first.name}   Qty:   #{orderproduct.ordered_qty}"
        end
      end
      puts "--------------------------------------------------"
      puts "Order Total: #{order.order_total}"
      puts "--------------------------------------------------"
    end
    #expected outputs:
    #Customer ID:/
    #Customer Name:
    #Order ID:
    #Products list with qty
    #Order Total
  end

end
