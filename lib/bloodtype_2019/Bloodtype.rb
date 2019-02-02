class Bloodtype
  attr_accessor :name, :description, :breakfast, :lunch, :snack, :dinner, :dessert

  @@all = []

  def initialize(name, description)
    @name = name 
    @description = description
    @@all << self 
  end 

  def add_menu(menu)
    @breakfast= menu["Breakfast"]
    @lunch= menu["Lunch"]
    @snack= menu["Snack"]
    @dinner= menu["Dinner"]
    @dessert= menu["Dessert"]
  end 

  def self.gather_bloodtypes
    types = Scraper.fetch_bloodtypes 
    menus = Scraper.get_sample_menus
    types.each do |i|
      name, description = i 
      Bloodtype.new(name, description).add_menu(menus[name.upcase])
    end 

    binding.pry 
  end 
  
  def self.all
    @@all 
  end 

end 