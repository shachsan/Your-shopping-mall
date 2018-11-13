class Customer < ActiveRecord::Base
  has_many :orders
  has_many :products, through: :orders


  ##As a customer, I should be able to place an order
  def self.customer_selection(customer_items) #[[product_id, qty]]
    #This method takes an instance of customer_selected_items which has following attributes:
        #productid, qty
    #Instance should be created as soon as customer finished selecting items

    #Once the customer finished selecting products
    #customer should be able to see list of items selected
    order_total = 0
    customer_items.each do |item_qty|
      puts "ProductId: #{item_qty[0]}"
      puts "Product Name: #{Product.where(id:item_qty[0]).first.name}"
      puts "Qty: #{item_qty[1]}"
      order_total += Product.where(id:item_qty[0]).first.price * item_qty[1]
    end
      puts "************************"
      puts "Order Total: #{order_total}"
  end

  def place_order(customer_items)#[[product_id, qty]]
    orderid = Order.create(customer_id:self.id).id
    customer_items.each do |item_qty|
      Orderproduct.create(order_id:orderid, product_id:item_qty[0], ordered_qty:item_qty[1])
      update_qty = Product.where(id:item_qty[0]).first.quantity -= item_qty[1]
      Product.where(id:item_qty[0]).first.update(quantity:update_qty)
    end

  end

###As a customer, I should be able to view all my order history
  def customer_orders
    ##should return all the orders for this customer
    # orders
    # products = Customer.where(id:self.id).first.products #returns array
    #
    # puts "CustomerId:#{self.id}"
    # puts "Customer Name: #{self.name}"

    orders.each do |order|
      puts "Order Id: #{order.id}"
      products.each do |product|
        puts "product name:#{product.name}  qty: #{}"
      end
    end
    #expected outputs:
    #Customer ID:/
    #Customer Name:
    #Order ID:
    #Products list with qty
    #Order Total
  end

end
