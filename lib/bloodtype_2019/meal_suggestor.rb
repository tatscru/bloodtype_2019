#Our CLI controller- business logic and user interactions 

class MealSuggestor
  def initialize
    @type = nil
  end 

  def suggest
    puts "Hello!"
    puts "Tell me your blood type so I can suggest the healthiest meal:"
    lists_blood_types
    prompt
    sample_menu
  end 

  def lists_blood_types
    Scraper.fetch_bloodtypes
    puts Scraper.bloodtypes[0]
    puts Scraper.bloodtypes[2]
    puts Scraper.bloodtypes[4]
    puts Scraper.bloodtypes[6]
  end 
  
  def prompt
    puts
    puts "To learn more information, type your blood type name." 
    @type = gets.strip
    case @type.downcase
      when "type o"
        puts Scraper.bloodtypes[1]
      when "type a"
        puts Scraper.bloodtypes[3]
      when "type b"
        puts Scraper.bloodtypes[5]
      when "type ab" 
        puts Scraper.bloodtypes[7]
      when "list"
        puts lists_blood_types
      when "exit"
        puts goodbye 
      else 
        puts "Sorry, I did not understand your input. Reenter your bloodtype, type list to see the different bloodtypes again, or type exit"
    end
  end 
    
  def sample_menu
    puts "Would you like to see a sample menu for #{@type}?"
    response = gets.downcase.strip
    if response.eql?('yes')
      Scraper.get_sample_menus.each do |meal, description|
      puts "#{meal}: #{description}"
      end 
    end
  end 

  def goodbye
    puts "Have a wonderful day!"
    exit 0 
  end
end 


