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

  def self.craper_city
    doc = Nokogiri::HTML(open("https://crew.co/coffee-power/"))
    doc.css("a.entry.js-entry-link").each do |city|
      city_name = city.css("h3.entry_title").text
      city_link = city.attribute("href").value
      self.new(city_name, city_link)
    end
  end

  def self.all
    @@all
  end
end