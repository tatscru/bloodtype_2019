#Our CLI controller- business logic and user interactions 

class CLI

  def call 
    lists_blood_types
    prompt
    goodbye
    # foods 
    # goodbye
  end 

  def lists_blood_types
    
  end 
  
  def prompt
    puts "To learn more, type the name of your blood type, list to output the bloodtype names, or type exit" 
    sample_menu()
    
    input = nil 
    while input != "exit"
      input = gets.strip.upcase 
      case input 
        when "Type O "
         
        when "Type A"
          
        when "Type B" 
          
        when "Type AB" 
        
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
    
  end 

  def goodbye
    puts "Have a wonderful day!"
  end 

end 