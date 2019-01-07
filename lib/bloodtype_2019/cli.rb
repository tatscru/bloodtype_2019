#Our CLI controller- business logic and user interactions 

class CLI

  def call 
    lists_blood_types
    prompt
    sample_menu
    # goodbye
   
  end 

  def lists_blood_types
    puts "\nHello!\n Below you will find a list of the four different bloodtype groups:"
    Types.scraped_bloodtypes 
    
    puts Types.types_array[0]
    puts Types.types_array[2]
    puts Types.types_array[4]
    puts Types.types_array[6]

    # binding.pry 
  end 
  
   def prompt
    puts "\bTo learn more information, type your blood type name." 
    
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
  end 

  def goodbye
    puts "Have a wonderful day!"
    exit 0 
  end 

end 