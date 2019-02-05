#Our CLI controller- business logic and user interactions 

class MealSuggestor
  def initialize
    @type = nil
  end 

  def suggest
    puts "Hello!"
    puts "Tell me your blood type so I can suggest the ideal meal plan for you:"
    lists_blood_types
    prompt
    sample_menu
  end 

  def lists_blood_types
    Bloodtype.print_all
  end 
  
  def prompt
    puts
    puts "To learn more information, type your blood type name." 
    @type = gets.strip.downcase.gsub(/\s/,"_")
    case @type
      when "type_o"
        puts Bloodtype.all_hash[@type].description
      when "type_a"
        puts Bloodtype.all_hash[@type].description
      when "type_b"
        puts Bloodtype.all_hash[@type].description
      when "type_ab" 
        puts Bloodtype.all_hash[@type].description
      when "list"
        puts Bloodtype.print_all
      when "exit"
        puts self.goodbye 
      else
        puts "Sorry, I did not understand your input. Reenter your bloodtype, type list to see the different bloodtypes again, or type exit"
        lists_blood_types
        prompt
    end
  end 
    
  def sample_menu
    bloodtype = Bloodtype.all_hash[@type]
    puts 
    puts "Would you like to see a sample menu for #{bloodtype.name}? (Yes/No)"
    response = gets.downcase.strip
    if response.eql?('yes')
      bloodtype.print_menu
    elsif response.eql?("no")  
      goodbye
    else 
      puts "Sorry, I did not understand your input."
      sample_menu
    end
  end 

  def goodbye
    puts 
    puts "Have a wonderful day!"
    exit 0 
  end
end 


