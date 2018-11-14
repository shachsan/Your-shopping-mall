class Category < ActiveRecord::Base
  has_many :products


  def self.all_category
    prompt = TTY::Prompt.new
    tp self.all
    category = prompt.ask("Please select category")
  end
end
