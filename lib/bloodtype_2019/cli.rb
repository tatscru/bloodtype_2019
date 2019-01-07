#Our CLI controller- business logic and user interactions 

class CLI

  def call 
    lists_blood_types
    prompt
    sample_menu
    goodbye
   
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
    # sample_menu()
    
    input = nil 
    while input != "exit"
      input = gets.strip.upcase 
      case input 
        when "TYPE O"
         puts Types.types_array[1]
        # sample_menu()
        when "TYPE A"
          puts Types.types_array[3]
        when "TYPE B" 
          puts Types.types_array[5]
        when "TYPE AB" 
          puts Types.types_array[7]
        when "LIST"
          puts lists_blood_types
        when "EXIT"
          puts goodbye 
        else 
          puts "Sorry, I did not understand your input. Reenter your bloodtype, type list to see the different bloodtypes again, or type exit"
      end 
    end 
  end 
    
  def sample_menu(type)
    Y/N
  end 

  def goodbye
    puts "Have a wonderful day!"
    exit 0 
  end 

end 