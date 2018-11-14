def cart_total(shopping_cart)
  #this method should calculate the total
  order_total = hash.new(0)
  shopping_cart.each do |product|
    order_total[product.name] += product.quantity * product.price
  end
  order_total
end
