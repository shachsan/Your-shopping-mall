##product class

has many products each containing many items
has many orders through sale

##join

product to order relationship |have a product id joined to an order id + quantity|

##order


has one customer |have customer id|
has many products

##customer

has many orders



####methods

a customer should be able to create an order |instance method|
an order should add items to it's order |class method|
a products quantity should be able to adjust |class method|



##program running
file is run
a name is entered
looks up the name (where)
or a customer method is created
get all the categories
save name into an array
output name
customer chooses category
validate input by comparing to array
look up item (find_by)  
return item list save into array
get input for an item name and quantity
compare to quantity existing
search array if item exists so we can combine if its the same item
save the item object with quantity into an array by grabbing from existing array
output "checkout or continue shopping"
back to selecting item
#checkout process:
create an order instance and get the id
save all items to itemproduct table having the order id as self
change quantity in product table
output the total from array
