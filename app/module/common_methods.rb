module CommonMethods

    def self.logout
      $customer = nil
      puts "Thank you for your time with us!"
      puts "You are being logged out.... "
      sleep(3)
      system('bin/prompt')
    end

end
