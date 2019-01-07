class Scraper

 @@meals = {}
 
  def self.fetch_bloodtype_info!
    doc = Nokogiri::HTML(open("https://www.everydayhealth.com/diet-nutrition/eat-right-for-your-type-diet.aspx"))
    foods = doc.css("#foodlist-section ul li")
    foods.each do |i| 
      bloodtype, description = i.text.split(/[:(]/)
      @@meals[bloodtype] = description
    end 
    @@meals
  end 
  
  def self.bloodtypes
    @@meals.map{|(type)| type }
  end 

  def self.get_sample_menus
    doc = Nokogiri::HTML(open("https://www.everydayhealth.com/diet-nutrition/eat-right-for-your-type-diet.aspx"))
    menu_node = doc.css('#samplemenu-section')

    menus = {}
  
    menu_node.css('h3').each do |type_header|
      type_name = type_header.text.upcase
    
      ul = type_header.next_sibling
      ul.css('li').each do |li|
        meal, description = li.text.split(': ')
        menus[meal] = description
      end
    end
    menus
  end
end









