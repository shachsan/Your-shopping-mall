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
    system('clear')
    arg = prompt.ask("Enter product id or item name:")
    # binding.pry
    if arg.count("a-zA-Z")== 0
      item = self.find_by(id:arg.to_i)

      if item.nil?
        puts "Item not found with that product ID"
        puts "Please try again"
        check_price
      else
        puts "Item: #{item.name}"
        puts "Price: $#{item.price}"
        puts '-'*25
        CommonMethods.control_menu
      end


    elsif arg.count("a-zA-Z") == arg.chars.count
        item = self.find_by(name:arg)
      if item.nil?
        puts "Item not found with that Product name"
        puts "Please try again"
        check_price
      else
        puts "Item: #{item.name}"
        puts "Price: $#{item.price}"
        puts '-'*25
        CommonMethods.control_menu
      end

    else
      puts "Please enter valid name"
    end

  end


end
