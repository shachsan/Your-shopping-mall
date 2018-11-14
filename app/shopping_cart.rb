
require "highline/import"


def shopping_cart(customer)
  system('clear')
  shopping_cart = []
  order_in_progress = nil
  while order_in_progress != "2" && order_in_progress != "checkout"
    user_item = ask("Enter product name:", String)
    item_in_stock = Product.find_by(name:user_item)
    if item_in_stock
      qty = ask("Qty:", Integer)
      shopping_cart << [item_in_stock.id, qty]
    else
      puts "Item not found! Please enter the item name again"
      next
    end
    # binding.pry
    order_in_progress = ask("1. continue      2. checkout")
  end

  customer.customer_selection(shopping_cart) # This method is inside the Customer class

end
