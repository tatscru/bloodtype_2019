class Bloodtypes::TYPES

  attr_accessor :name, :foods, :menu 


  def self.types
    self.scraped_bloodtypes
  end 
  
  def self.scraped_bloodtypes
    
#       def lists_blood_types
#     puts "The 4 Different Blood Types:"
#     puts <<DOC.gsub /^\s*/,"" 
#     1. Type O
#     2. Type A
#     3. Type B
#     4. Type AB
# DOC
#   end 

def self.scrape
  bloodtypes = []
end 



# Steps
# extract properties
# instantiate list of bloodtypes
# Go to site
  
    # type_o = self.new 
    # type_o.name = "Blood Type O" 
    # type_o.foods = "If you are type O, like an estimated 46 percent of the population, the Eat Right 4 Your Type program suggests that you stay away from wheat, dairy, caffeine, and alcohol. Reach instead for fruits, vegetables, and lean, organic meats"
    # type_o.menu = 
    #   Breakfast: Two slices of organic bread with almond butter, vegetable juice, and a banana
    #   Lunch: A spinach salad with roast beef and fruit slices
    #   Snack: Fruit
    #   Dinner: Lamb stew with a variety of vegetables
    #   Dessert: Fruit salad

    # type_a = self.new 
    # type_a.name = "Blood Type A" 
    # type_a.foods = 
    # type_a.menu = 

    # type_b = self.new 
    # type_b.name = "Blood Type B" 
    # type_b.foods = 
    # type_b.menu = 

    # type_ab = self.new 
    # type_ab.name = "Blood Type AB" 
    # type_ab.foods = 
    # type_ab.menu = 
  
  
    bloodtypes
  end 
  
end 