#learning_strings.rb

puts "Hello World"
p "Hello Sailor!"
puts "Hello World".inspect

name = "Clayton"
p "My name is " + name #fixed
p "My name is #{name}" #fixed # variable replace only seems to work with double quotes

name = gets.chomp
p "My name is #{name}."
