class Product < ActiveRecord::Base
  belongs_to :category
  has_many :orderproducts
  has_many :orders, through: :orderproducts

  def self.all_products(category_id)
    prompt = TTY::Prompt.new
    system('clear')
    category_items = self.where(category_id:category_id)
    tp category_items.select(:id, :name, :price), :except=>[:quantity, :category_id]
  end

  def self.check_price
    prompt = TTY::Prompt.new
    arg = prompt.ask("Enter product id or item name:")
    if arg.is_a?Integer
      item = self.find_by(id:arg)
      item.nil? ? "item not found":item.price
    elsif arg.is_a?String
      item = self.find_by(name:arg)
      item.nil? ? "item not found":item.price
    end
  end


end
