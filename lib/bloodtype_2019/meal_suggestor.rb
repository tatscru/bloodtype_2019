#Our CLI controller- business logic and user interactions 

class MealSuggestor
  def initialize
    @bloodtype_index = nil
  end 

  def suggest
    puts "Hello!"
    puts "Tell me your blood type so I can suggest the healthiest meal:"
    lists_blood_types
    prompt
    # sample_menu
  end 

  def lists_blood_types
    Scraper.fetch_bloodtype_info!
    Scraper.bloodtypes.each_with_index{|type, index| puts "#{index + 1}. #{type}" }
  end 
  
  def prompt
    input = gets.strip.to_i
    description = Scraper.bloodtype_descriptions[input - 1]
    unless input > 0 && description
      puts "I don't think that's a valid blood type"
      prompt
      return
    end
  #   case @type.downcase
  #     when "type o"
  #       puts Scraper.blood_types[1]
  #     when "type a"
  #       puts Scraper.types_array[3]
  #     when "type b"
  #       puts Scraper.types_array[5]
  #     when "type ab" 
  #       puts Types.types_array[7]
  #     when "list"
  #       puts lists_blood_types
  #     when "exit"
  #       puts goodbye 
  #     else 
  #       puts "Sorry, I did not understand your input. Reenter your bloodtype, type list to see the different bloodtypes again, or type exit"
  #   end
  # end 
    
  # def sample_menu
  #   puts "Would you like to see a sample menu for #{@type}?"
  #   response = gets.downcase.strip
  #   if response.eql?('yes')
  #     Types.get_sample_menus.each do |meal, description|
  #     puts "#{meal}: #{description}"
  #     end 
  #   end
  # end 

  def goodbye
    puts "Have a wonderful day!"
    exit 0 
  end
end 