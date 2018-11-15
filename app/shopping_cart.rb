
# require "highline/import"


def shopping_cart#(customer)
  $shopping_cart_inprogress = []
  prompt = TTY::Prompt.new
  system('clear')

  order_in_progress = nil
  begin
  # while order_in_progress != "2" && order_in_progress != "checkout"
    user_item = prompt.ask("Enter product name:")
    item_in_stock = Product.find_by(name:user_item)
    if item_in_stock
      qty = prompt.ask("Qty:", convert: :int)
      # shopping_cart << [item_in_stock.id, qty]
        $shopping_cart_inprogress << [item_in_stock.id, qty]
    else
      puts "Item not found! Please enter the item name again"
      next
    end
    # binding.pry
  end while prompt.yes?("Continue Shopping or Checkout"){|q|q.suffix 'Continue/Checkout'}
    # order_in_progress = prompt.ask("1. continue      2. checkout")
  

  $customer.customer_selection($shopping_cart_inprogress) # This method is inside the Customer class

end



def shop_from_catelog
  puts "Please enter product id and qty "
end
