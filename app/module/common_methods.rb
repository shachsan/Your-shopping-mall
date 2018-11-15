module CommonMethods

    def self.logout
      $customer = nil
      $shopping_cart_inprogress
      puts "Thank you for your time with us!"
      puts "You are being logged out.... "
      sleep(3)
      system('bin/prompt')
    end

    def self.order_menu
      prompt = TTY::Prompt.new
      customer_choice = prompt.select('What would you like to do?') do |menu|
        menu.choice name: 'Place order from this catelog',  value: 1
        menu.choice name: 'Go back to Catelog', value: 2 #disabled: '(out of stock)'
        menu.choice name: 'Main Menu',  value: 3
        menu.choice name: 'Exit',  value: 4
      end
      if customer_choice == 1
          $shopping_cart_inprogress = prompt.collect do


            begin
              key(:cart).values do
                key(:product_id).ask('Enter product id:', required: true, convert: :int)
                key(:quantity).ask('Qty:', required: true, convert: :int)
              end

            end while prompt.yes?("continue shopping?"){|q|q.suffix 'Yes/Done'}
          end
            # binding.pry

        $shopping_cart_inprogress = $shopping_cart_inprogress[:cart].map{|order|order.values}
        shopping_inprogress
      end
    end

    def self.shopping_inprogress
      if !$shopping_cart_inprogress
        puts "You do not have anything in your shopping cart"
        puts "You are being directed to Main Menu"
        sleep(2)
        main_menu
      else
        $customer.customer_selection($shopping_cart_inprogress)
      end
    end


end
