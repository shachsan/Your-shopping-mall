class Product < ActiveRecord::Base
  belongs_to :category
  has_many :orderproducts
  has_many :orders, through: :orderproducts

  def self.all_products
    tp self.select(:id, :name, :price), :except=>[:quantity, :category_id]
  end

  def self.check_price(arg)
    if arg.is_a?Integer
      item = self.find_by(id:arg)
      item.nil? ? "item not found":item.price
    elsif arg.is_a?String
      item = self.find_by(name:arg)
      item.nil? ? "item not found":item.price
    end
  end


end
