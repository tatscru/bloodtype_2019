class Scraper

 @@blood_types = []
 
  def self.fetch_bloodtypes
    doc = Nokogiri::HTML(open("https://www.everydayhealth.com/diet-nutrition/eat-right-for-your-type-diet.aspx"))
    foods = doc.css("#foodlist-section ul li")
    
    foods.each do |i| 
      el = i.text.split(/[:(]/)
      @@blood_types << el[0].strip  
      @@blood_types << el[1].strip 
  end 
  @@blood_types
  
  
  # deal = CLI()
end 

def self.bloodtypes
  @@blood_types
end 

  def self.get_sample_menus
    
    doc = Nokogiri::HTML(open("https://www.everydayhealth.com/diet-nutrition/eat-right-for-your-type-diet.aspx"))
    menu_node = doc.css('#samplemenu-section')

    menus = {}
  
    menu_node.css('h3').each do |type_header|
      type_name = type_header.text.upcase
      # if type_name == type 
      meals = {}
      ul = type_header.next_sibling
      ul.css('li').each do |li|
        meal, description = li.text.split(': ')
        menus[meal] = description
      end
    end
    menus
  end
  
end



















