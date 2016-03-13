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
    doc.css('').each do |coffeeshop|
      self.shop << {
        :name => coffeeshop.css('') ;
        :address => coffeeshop.css('');
        :wifi => coffeeshop.css('');
        :rating => coffeeshop.css('');
      }
    end
  end

  def list_coffeeshop
    puts self.link
  end

  def self.all
    @@all
  end
end