require 'pry'

require_relative "animal"
require_relative "client"


class Menu

  def initialize

    system 'clear'

    puts "Welcome to Happitails Animal Shelter Management System\n"
    puts "======================================================\n\n"
    puts "Please choose an option\n"
    puts "\n1. Add a new animal"
    puts "\n2. Add a new client"
    puts "\n=============================="
    puts "\n3. Display all animals"
    puts "\n4. Display all clients"
    puts "\n=============================="
    puts "\n5. Organise animal adoption"
    puts "\n6. Accept a new animal"
    puts "\n=============================="

    option = gets.strip.to_i

    case option
    when 1
      Animal.create

    when 2
      Client.create

    when 3
      Shelter.animal_display
      gets
      Menu.new

    when 4
      Shelter.client_display
      gets
      Menu.new

    when 5
      Animal.adopt

    when 6
      Client.donate

    else
      Menu.new
    end


  end

end
