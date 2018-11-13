# Add seed data here. Seed your database with `rake db:seed`


# create_table "categories"
#   t.string "name"
# end
Category.create(name:"Food")
Category.create(name:"Clothing")
Category.create(name:"Home")
Category.create(name:"Electronic")
Category.create(name:"Computer")

# create_table "products",
#   t.string "name"
#   t.float "price"
#   t.integer "quantity"
#   t.integer "category_id"
# need to add following columns to products table in database
  #gender
  #size
  #color
Product.create(name: "Mens T-shirt size - L", price: 35.50, quantity: 30, category_id: 2 )
Product.create(name: "Women top size - M", price: 12.50, quantity: 25, category_id: 2 )
Product.create(name: "Kids nike size - S", price: 55.50, quantity: 12, category_id: 2 )
Product.create(name: "Mens Levis size - L", price: 25.0, quantity: 45, category_id: 2 )
Product.create(name: "Macbook retina 13in", price: 1500, quantity: 20, category_id: 5 )
Product.create(name: "Carpet 12x12", price: 250.0, quantity: 12, category_id: 3 )
Product.create(name: "Boss sound bar", price: 350, quantity: 40, category_id: 4 )
Product.create(name: "ROTISSERIE chicken", price: 15.50, quantity: 10, category_id: 1 )
Product.create(name: "PARMESAN cheese 1lb", price: 18.50, quantity: 35, category_id: 1 )
Product.create(name: "Couch chair", price: 225.50, quantity: 30, category_id: 3 )
Product.create(name: "Airpod", price: 135.50, quantity: 120, category_id: 4 )
Product.create(name: "iPad Air", price: 450, quantity: 20, category_id: 5 )





# create_table "customers"
#   t.string "name"
# end

Customer.create(name: "John")
Customer.create(name: "Sanjay")
Customer.create(name: "Eric")
Customer.create(name: "Tony")
Customer.create(name: "Eizik")
Customer.create(name: "Kevin")
#
# create_table "orderproducts"
#   t.integer "order_id"
#   t.integer "product_id"
# end

Orderproduct.create(order_id:1, product_id:1)
Orderproduct.create(order_id:1, product_id:2)
Orderproduct.create(order_id:1, product_id:3)
Orderproduct.create(order_id:2, product_id:2)
Orderproduct.create(order_id:2, product_id:3)
Orderproduct.create(order_id:2, product_id:4)
# #
# # create_table "orders"
# #   t.integer "customer_id"
# #   t.integer "orderproduct_id"
# #   t.float "payment"
# # end
Order.create(customer_id:1, payment: 50.0)
Order.create(customer_id:2, payment: 150.0)
Order.create(customer_id:3, payment: 500.0)
Order.create(customer_id:4, payment: 250.0)
Order.create(customer_id:5, payment: 100.0)
Order.create(customer_id:1, payment: 90.0)
Order.create(customer_id:2, payment: 40.0)
