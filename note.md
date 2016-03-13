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

4. Run file

  As simple as possible. Don't need to change all the time when program is updated. 

  CoffeeAndPower::CLI.new.call

  Getting this one to work...took awhile

3. Classes and Modules

Coffeeshop, City, CLI
  CLI 
    method: 

  Coffeeshop
    attr_accessor :name, :address, :wifi-note, :rating
    initialize with name, address, wifi-note, rating optional

  City
    attr_accessor :name, :link :
    @@all 


5. Questions I have during building:

  require vs. require_relative
  read up on Here Doc

6. Note during the process

I started with Avi's walk-through video. I suggest watching it from start to finish one time first before coding your own gem. I started as a "code along", play and pause as I go but after awhile, I gust stop doing all together and focus watching his process.

I implemented his rhymth of breaking and fixing code, starting from the cli file. At the start of the project, I have a lot of concern over populating that data structure I set up. His approach of targeting one layer at a time helps tremendously unknot all of that.

So, the sequence of how I target my code is as follow:

1 . Start with the cli.rb file, building out all the method of the interface. Put in placeholders for the city list and coffeeshop. Tested. Passed.
2 . Set up the City class. Put in 2 sample variables. Replace City class with placeholder in cli.rb and test to see if it runs correctly.
3 . Create .scrape_city method to populate the City class
4 . 