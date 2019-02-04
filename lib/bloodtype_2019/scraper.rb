require_relative "./bloodtype"

class Scraper
 
  def self.fetch_bloodtypes
    doc = Nokogiri::HTML(open("https://www.everydayhealth.com/diet-nutrition/eat-right-for-your-type-diet.aspx"))
    foods =  doc.css("#foodlist-section ul li")
    
   foods.each do |i| 
      el = i.text.split(/[:(]/)
      Bloodtype.new(el[0].strip,el[1].strip)  
    end 
    get_sample_menus
  end 

  def self.get_sample_menus
    doc = Nokogiri::HTML(open("https://www.everydayhealth.com/diet-nutrition/eat-right-for-your-type-diet.aspx"))
    menu_node = doc.css('#samplemenu-section')
  
    menu_node.css('h3').each do |type_header|
      type_name = type_header.text.upcase
      # binding.pry 
      type = type_name.strip.downcase.gsub(/\s/,"_")
      menu = {}
      ul = type_header.next_sibling
      ul.css('li').each do |li|
        meal, description = li.text.split(': ')
        menu[meal] = description
      end
      Bloodtype.all_hash[type].menu=menu
    end
  end
end




















