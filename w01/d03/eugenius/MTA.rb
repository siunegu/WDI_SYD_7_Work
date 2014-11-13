require 'pry'

subway = {
  "n line" => {
    :section_one => ["times square", "34th", "28th", "23rd"],
    :intersection => ["union square"],
    :section_two => ["8th"]
  },
  "l line" => {
    :section_one => ["8th", "6th"],
    :intersection => ["union square"],   
    :section_two => ["3rd", "1st"],
  },
  "six line" => {
    :section_one => ["grand central", "33rd", "23rd"],
    :intersection => ["union square"],    
    :section_two => ["astor place"],  
  },
}

# puts "Which Line are you on?"
# start = gets.chomp.to_s.downcase

# puts "Where do you want to go?"
# destination = gets.chomp.to_s.downcase
# puts subway["n line"][:section_one]  
puts "#{subway["n line"][:section_one].length + subway["n line"][:section_one].length + subway["n line"][:section_one].length}"


# def position_in_array(starting_position, ending_position, lines)
#   # binding.pry
#   current_line_start = lines[starting_position]
#   length_of_line = current_line_start[:section_one].length
#   binding.pry
#   length_of_line - position_in_line

# end

# position_in_array(start, destination, subway)


# case line
#   when "times square"

# end 

# puts subway["N line"][:section_one].length
