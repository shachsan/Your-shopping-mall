
def shopping_cart

  prompt = TTY::Prompt.new
  # prompt1 = TTY::Prompt.new(interrupt: :signal)
  system('clear')

  order_in_progress = nil
  begin
    user_item = prompt.ask("Enter product name:")
    item_in_stock = Product.find_by(name:user_item)
    if item_in_stock
      qty = prompt.ask("Qty:", convert: :int)
        if qty > item_in_stock.quantity
          puts "We do not have that many quantity in stock. Please enter less than or equal to => #{item_in_stock.quantity}"

        else
        $shopping_cart_inprogress << [item_in_stock.id, qty]
        end
    else
      puts "Sorry, the item is not found!"
      re_enter = prompt.select("Would you like to re-enter the product name?", %w(yes main-menu))
      if re_enter == "yes"
        redo
      else
        main_menu
      end
    end

  end while prompt.yes?("Keep Shopping or Checkout"){|q|q.suffix 'Keep Shopping/Checkout'}

  $customer.customer_selection($shopping_cart_inprogress) # This method is inside the Customer class

end



def shop_from_catelog
  puts "Please enter product id and qty "
end
