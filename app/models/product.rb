class Product < ActiveRecord::Base
  belongs_to :category
  has_many :orderproducts
  has_many :orders, through: :orderproducts

  def self.all_products(category_id)

    prompt = TTY::Prompt.new
    system('clear')
    category_items = self.where(category_id:category_id)
    tp category_items.select(:id, :name, :price), :except=>[:quantity, :category_id]
    CommonMethods.order_menu
  end

  def self.check_price
    prompt = TTY::Prompt.new
    arg = prompt.ask("Enter product id or item name:")
    # binding.pry
    if arg.count("a-zA-Z")== 0
      item = self.find_by(id:arg.to_i)
      item.nil? ? puts "item not found" : puts "Item: #{item.name} Price: $#{item.price}"
      puts "integer"
      # binding.pry
    elsif arg.count("a-zA-Z") == arg.chars.count
      item = self.find_by(name:arg)
      item.nil? ? puts "item not found" : puts "Item: #{item.name} Price: $#{item.price}"
      puts "string"
    else
      puts "Please enter valid name"
    end
    # binding.pry
    # 0
  end


end
