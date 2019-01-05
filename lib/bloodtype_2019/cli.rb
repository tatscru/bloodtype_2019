#Our CLI controller- business logic and user interactions 

class Bloodtypes::CLI

  def call 
    lists_blood_types
    prompt
    goodbye
    # foods 
    # goodbye
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
  
  def prompt
    puts "To learn more, enter the number associated with your blood type or type exit" 
    input = nil 
    while input != "exit"
      input = gets.strip 
      case input 
        when "1"
        # puts "More info on Type O..."
         
        when "2"
          # puts "More info on Type A..."
        when "3" 
          # puts "More info on Type B..."
        when "4" 
        # puts "More info on Type AB..."
        when "list"
          puts lists_blood_types
        else 
          puts "Sorry, I did not understand your input. Enter a number 1-4, type list to see the different bloodtypes again, or type exit"
      end 
    end 
  end 

    
    # def type_A
      
    # end 
    
  # AND/OR
    
    # def full_list_of_bloodtypes
    #   types.all {|b| b.name}.each do |b| puts "#{b.name} - #{b.foods} - #{b.menu}"
    #   end 
    # end 
    
#   def sample_menu
#   end 

  def goodbye
    puts "Have a wonderful day!"
  end 

end 