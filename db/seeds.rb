# Add seed data here. Seed your database with `rake db:seed`

# Movie.create(title: "Wargames", release_date: 1983, director: "John Badham", lead: "Matthew Broderick", in_theaters: false)
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
create_table "categories", force: :cascade do |t|
  t.string "name"
end

# create_table "categories"
#   t.string "name"
# end

Catagory.create(name:"clothing")

# create_table "customers"
#   t.string "name"
# end

Customer.create(name: "John")
#
# create_table "orderproducts"
#   t.integer "order_id"
#   t.integer "product_id"
# end
#
# create_table "orders"
#   t.integer "customer_id"
#   t.integer "orderproduct_id"
#   t.float "payment"
# end
