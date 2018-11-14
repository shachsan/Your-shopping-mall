class Category < ActiveRecord::Base
  has_many :products

  def self.all_category
    tp self.all
  end
end
