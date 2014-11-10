# This is a comment - use them all of time to explain what you are doing!

puts "What is your first name?" # Prints something to the screen
first_name = gets.strip # Ask for a user input, and use the strip method to remove white space on either end of the string
puts "Your first name is #{first_name}" # Uses string interpolation to put in a variable

puts "What is your last name?"
last_name = gets.strip
puts "Your last name is #{last_name}"

full_name = first_name + " " + last_name
puts "Your full name is #{full_name}"

puts "What is your address?"
address = gets.strip
puts "Your name is #{full_name} and you live at #{address}"