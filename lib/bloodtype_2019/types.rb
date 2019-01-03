class Bloodtypes::TYPES

  attr_accessor :name, :foods, :menu 

  def self.types 
  
    type_o = self.new 
    type_o.name = "Blood Type O" 
    type_o.foods = 
    type_o.menu = 

    type_a = self.new 
    type_a.name = "Blood Type A" 
    type_a.foods = 
    type_a.menu = 

    type_b = self.new 
    type_b.name = "Blood Type B" 
    type_b.foods = 
    type_b.menu = 

    type_ab = self.new 
    type_ab.name = "Blood Type AB" 
    type_ab.foods = 
    type_ab.menu = 
  
  
  [type_o, type_a, type_b, type_ab]
  end 
  
end 