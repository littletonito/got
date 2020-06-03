require 'pry'


class Cli 

  def run 
    welcome
    Api.get_got
    main
  end
  
  def print_welcome
    puts "welcome to got CLI"
  end
  
  def main
    print_all
    print_selection_prompt
    id = prompt_selection
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
      main
    end
    id
  end
  
  def print_error
    puts "Invalid selection, try again!"
  end

end