class CoffeePower::CLI

  def call
    CoffeePower::City.scrape_city
    @cities = CoffeePower::City.all
    @cities.each do |city|
      city.scrape_coffeeshop
    end 
    puts "Good morning! Get ready to work? We have these cities on file:"
    list_cities
    main_menu
    #goodbye
  end

  def list_cities
    @cities.each_with_index do |city, i|
      puts "#{i+1}. #{city.name}"
    end

  end

  def main_menu
    input = ""
    puts "Where in the world are you today? Type city's number or exit to quit program"
    until input == "exit"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= @cities.size
         @cities[input.to_i - 1].list_coffeeshop
         continue
      elsif input == "list"
        self.list_cities
      elsif input == "exit"
        goodbye
      else
        puts "Not sure what you want. Type 'list' or 'exit'."
      end
    end 
  end

  def continue
    puts " "
    puts "Anything else we can help you with today? Type 'list' to see the cities again or 'exit'."
  end

  def goodbye
    puts " "
    puts "Thanks for using my gem! Have a great productive day over there :)"
  end

end 