1. Interface:

  Ask cities 
  -> list cities
  Input city
  -> list coffeeshops
  Input coffeeshop
  ->list detail

2. Data structure
  @@cities = [{name: "city1.name", 
              link: , 
              coffeeshops: [
                {name: , 
                address: , 
                wifi-note: , 
                rating: }]
              },...
            ]


3. Classes and Modules

Scaper, Coffeeshop, City

  Coffeeshop
    attr_accessor :name, :address, :wifi-note, :rating
    initialize with name, address, wifi-note, rating optional

  City
    attr_accessor :name, :link
    @@all 

  Scraper 
    Scrape City array from https://crew.co/coffee-power/
      populate each city with appropiate attributes
    Scrape each city page
      to populate each coffeeshop hash with appropiate attribute

4. Run file

  As simple as possible. Don't need to change all the time when program is updated. 

  CoffeeAndPower::CLI.new.call

  Getting this one to work...took awhile

5. Questions I have during building:

  require vs. require_relative
  read up on Here Doc