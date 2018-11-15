
def shopping_cart

  prompt = TTY::Prompt.new
  system('clear')

  order_in_progress = nil
  begin
    user_item = prompt.ask("Enter product name:")
    item_in_stock = Product.find_by(name:user_item)
    if item_in_stock
      qty = prompt.ask("Qty:", convert: :int)
        $shopping_cart_inprogress << [item_in_stock.id, qty]
    else
      puts "Item not found! Please enter the item name again"
      next
    end

  end while prompt.yes?("Keep Shopping or Checkout"){|q|q.suffix 'Keep Shopping/Checkout'}

  $customer.customer_selection($shopping_cart_inprogress) # This method is inside the Customer class

end



def shop_from_catelog
  puts "Please enter product id and qty "
end
