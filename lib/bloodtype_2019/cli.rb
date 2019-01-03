#Our CLI controller- business logic and user interactions 

class Bloodtypes::CLI

  def call 
    lists_blood_types
    foods 
    goodbye
  end 

  def lists_blood_types
    puts "The 4 Different Blood Types:"
    puts <<DOC.gsub /^\s*/,"" 
    1. Type O
    2. Type A
    3. Type B
    4. Type AB
DOC
  end 
  
  def foods 
    puts "To learn more, enter the number associated with your blood type or type exit" 
    input = nil 
    while input != "exit"
      input = gets.strip 
      case input 
        when "1"
         puts "More info on Type O..."
        when "2"
          puts "More info on Type A..."
        when "3" 
          puts "More info on Type B..."
        when "4" 
         puts "More info on Type AB..."
        else 
          puts "Sorry, I did not understand your input. Enter a number 1-4 or type exit"
      end 
    end 
  end 

#   def sample_menu
#   end 

  def goodbye
    puts "Have a wonderful day!"
  end 

end 