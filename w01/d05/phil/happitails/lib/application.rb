require_relative "shelter"
require_relative "menu"
require_relative "animal"

class Application

  def start

  system 'clear'

  puts "Welcome to Happitails Animal Shelter Management System\n"
  puts "======================================================\n\n"
  
  Shelter.new("Happi")
  Menu.new


  end




  end
