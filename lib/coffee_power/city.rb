require 'nokogiri'
require 'open-uri'

class CoffeePower::City
  attr_accessor :name, :link, :shop
  
  @@all = []

  def initialize(name, link)
    @name = name
    @link = link
    @shop = []
    @@all << self 
  end

  def self.scrape_city
    doc = Nokogiri::HTML(open('https://crew.co/coffee-power/'))
    doc.css('div.city-list a').each do |city|
      city_name = city.css('h3').text
      city_link = city.attribute('href').value
      self.new(city_name, city_link)
    end
  end

  def scrape_coffeeshop
    doc = Nokogiri::HTML(open(self.link))
    doc.css('div.main div.listing.venue').each do |coffeeshop|
      self.shop << {
        :name => coffeeshop.css('div.venueInfo div.name p.venueName a').text,
        :address => coffeeshop.css('div.venueInfo div.meta span.address').text,
        :wifi => coffeeshop.css('div.tip p').text,
        :rating => coffeeshop.css('div.venueInfo div.name div.rating span.venueScore').text,
      }
    end
  end

  def list_coffeeshop
    puts "Here are great coffeeshops to work in in #{self.name}:"
    puts " "
    self.shop.each do |coffeeshop|
      puts "#{coffeeshop[:name]}"
      puts "Address: #{coffeeshop[:address]}"
      puts "Wifi: #{coffeeshop[:wifi].gsub(" Read more.", "")}"
      puts "Rating: #{coffeeshop[:rating]}"
      puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    end 
  end

  def self.all
    @@all
  end
end