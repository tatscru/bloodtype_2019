#Our CLI controller- business logic and user interactions 

class CLI

  def call 
    lists_blood_types
    prompt
    # sample_menu
    # goodbye
   
  end 

  def lists_blood_types
    Types.scraped_bloodtypes 
    
    puts Types.types_array[0]
    puts Types.types_array[2]
    puts Types.types_array[4]
    puts Types.types_array[6]

    # binding.pry 
  end 
  
   def prompt
    puts "To learn more, type the name of your blood type or type list to output the bloodtype names again" 
    
    case @type = gets.strip.downcase
      when "type o"
        puts Types.types_array[1]
      when "type a"
        puts Types.types_array[3]
      when "type b"
        puts Types.types_array[5]
      when "type ab" 
        puts Types.types_array[7]
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
      Types.get_sample_menus.each do |meal, menu|
        puts meal
        puts menu
      end
    end

  def goodbye
    puts "Have a wonderful day!"
    exit 0 
  end 

end 