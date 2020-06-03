require 'pry'


class Cli 

  def run 
    print_welcome
    Api.get_got
    main
  end
  
  def print_welcome
    puts "welcome to got CLI"
  end
  
  def main
    print_all
    print_selection_prompt
    id = valid_id?(prompt_selection)
    print_continue
    continue?(prompt_selection)
  end
  
  def print_all
    Got.all.each {|g| puts "#{g.id}.) #{g.name}"}
  end
  
  def print_selection_prompt
    puts "Select a characther by number for more information"
  end
  
  def prompt_selection
    gets.chomp
  end
  
  def valid_id?(id)
    id = id.to_i
    if id < 1 || id > Got.all.size 
      print_error
      sleep 1.5
      main
    end
    id
  end
  
  def print_error
    puts "Invalid selection, try again!"
  end
  
  def get_got_details(id)
    Api.get_details_by_id(id)
  end
  
  def print_continue
    puts "Would you like to continue? (y/n)"
  end
  
  def continue?(choice)
    if choice == 'y'
      main
    else
      print_goodbye
      exit
    end
  end
  
  def print_goodbye
    puts "Bye!!"
  end

end