class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :orderproducts
  has_many :products, through: :orderproducts

  ###As a customer, I should be able to view all my order history
  def self.customer_orders(customerId)
    ##should return all the orders for this customer
    # orders
    # products = Customer.where(id:self.id).first.products #returns array
    #
    # puts "CustomerId:#{self.id}"
    # puts "Customer Name: #{self.name}"

    orders.each do |order|
      puts "********************************"
      puts "Order Id: #{order.id}"
      puts "Order date: #{order.order_date}"
      puts "********************************"
      products.each do |product|
        puts "product name:#{product.name}" #  qty: #{}"
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
