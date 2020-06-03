class Cli 

  def run 
    welcome
    Api.get_got
    main
  end
  
  def welcome
    puts "welcome to got CLI"
  end
  
  def main
    print_all
  end
  
  def print_all
    Got.all.each {|g| puts "#{g.id}.) #{g.name}"}


end