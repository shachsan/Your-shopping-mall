class Category < ActiveRecord::Base
  has_many :products


  def self.all_category
    system('clear')
    prompt = TTY::Prompt.new
    # tp self.all
    # category = prompt.ask("Please select category")

    choices = %w(Food Clothing Home Electronic Computer)
    # binding.pry
    selected = prompt.multi_select("Please select category", choices)
    selected_catid = self.find_by(name:selected[0]).id

    Product.all_products(selected_catid)
  end
end
