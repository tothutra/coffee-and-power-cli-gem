class CoffeePower::CLI

  def call
    puts "Good morning! Get ready to work? We have these cities on file:"
    list_cities
    main_menu
    goodbye
  end

  def list_cities
    #City.all.each do |city|
      #puts "#{city.name}"
    #end
    puts "1. NYC, USA" 
    puts "2. Boston, USA"
    puts "3.Vancouver"
  end

  def main_menu
    input = ""
    until input == "exit"
      puts "Where in the world are you today? enter city's number or exit to quit program"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Here are great coffeeshops in NYC: "
        puts "Where in the world are you today? enter city's number or exit to quit program"
        input = ""
      when "2"
        puts "Here are great coffeeshops in NYC: "
        puts "Where in the world are you today? enter city's number or exit to quit program"
        input = ""
      when "exit"
        break
      else 
        puts "Uh oh! We haven't put that on the map yet!"
        puts "Where in the world are you today? enter city's number or exit to quit program"
        input = ""
      end 
    end 
  end

  def goodbye
    puts "Thanks for using my gem! Have a great productive day over there :)"
  end

end 