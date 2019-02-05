class Bloodtype
  attr_accessor :name, :description, :menu

  @@all_hash = {}

  def initialize(name, description)
    @name = name 
    @description = description
    @@all_hash[name.downcase.gsub(/\s/,"_")] = self
  end 

  def self.gather_bloodtypes
    types = Scraper.fetch_bloodtypes 
    menus = Scraper.get_sample_menus
    types.each do |i|
      name, description = i 
      Bloodtype.new(name, description).add_menu(menus[name.upcase])
    end 
  end 
  
  def print_menu
    menu.each do |meal, description|
      puts "#{meal}: #{description}"
    end 
  end 
  
  def self.print_all
    all_hash.each_value do |bloodtype|
      puts bloodtype.name 
    end 
  end 

  def self.all_hash
    @@all_hash 
  end 

end 