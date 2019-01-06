class Types

  # attr_accessor :name, :foods, :menu 

 @@blood_types = []
 
  def self.scraped_bloodtypes
    doc = Nokogiri::HTML(open("https://www.everydayhealth.com/diet-nutrition/eat-right-for-your-type-diet.aspx"))
    foods = doc.css("#foodlist-section ul li")
    
    foods.each do |i| 
      el = i.text.split(/[:(]/).strip
      @@blood_types << el[0].strip  
      @@blood_types << el[1].strip 
  end 
  @@blood_types
  binding.pry 
end 


  def self.get_sample_menus(type)
    
    doc = Nokogiri::HTML(open("https://www.everydayhealth.com/diet-nutrition/eat-right-for-your-type-diet.aspx"))
    menu_node = doc.css('#samplemenu-section')

    menus = {}
  
    menu_node.css('h3').each do |type_header|
      type_name = type_header.text
      meals = {}
      ul = type_header.next_sibling
      ul.css('li').each do |li|
        meal, description = li.text.split(': ')
        menus[meal] = description
       end
    end
   
    puts "#{menus.keys[0]}: #{menus[menus.keys[0]]}"
  end
  
# end









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
  
  
#     bloodtypes
#   end 
  
end 