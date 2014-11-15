require 'pry'
require_relative "animal"

class Menu

  def initialize

    system 'clear'

    puts "Welcome to Happitails Animal Shelter Management System\n"
    puts "======================================================\n\n"
    puts "Please choose an option\n"
    puts "\n1. Add a new animal"
    puts "\n2. Add a new client"

    option = gets.strip.to_i

    case option
    when 1
      puts "Please provide details of the animal:"
      puts "Name:"
      name = gets.strip.to_s.capitalize
      puts "Age"
      age = gets.strip.to_i
      puts "Gender: (M or F)"
      gender = ""
      # until gender == "M" || gender == "F"
      gets.strip.to_s.upcase
      # end
      puts "Species:"
      species = gets.strip.to_s.capitalize
      puts "Please list #{name}'s toys"
      puts "First toy: "
      toys = gets.strip.to_s
      Animal.new(name,age,gender,species,toys)



    when 2
      # Client.new
      puts "option 2"
    else
      puts "no choice"
    end


  end

end
