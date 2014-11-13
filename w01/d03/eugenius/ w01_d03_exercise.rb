

require "pry"

a = ["Anil", "Erik", "Jonathan"]
puts a[1]
# a[1] = ("Eugene")
# puts a
# a.push("Eugene") #Adds to the back
a.unshift("Eugene") #Adds to the front
puts a

print "\n"

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
puts h[1]
puts h[:two]
puts h["two"]
h[3] = "Three"
puts h
h[:four] = "Four"
puts h

print "\n"

is = {true => "It's true!", false => "It's false"}
puts is[2 + 2 == 4]
puts is["Erik" == "Jonathan"]
puts is[9 > 10]
puts is[0]
puts is["Erik"]

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

puts users["Jonathan"][:twitter]
users["Erik"][:favorite_numbers].push(7)
users["Eugene"] = {}
users["Eugene"][:twitter] = "siunegu"
puts users["Eugene"][:twitter] 
#Return Erik's Favorite Numbers
puts users["Erik"][:favorite_numbers]
puts users["Erik"][:favorite_numbers].min

# ------/ Put Even Numbers of Anil's Favorite Numbers /------ begin
# anil_numbers = users["Anil"][:favorite_numbers]

# anil_even_number_array = []

# anil_numbers.each do |x|
# 	if x % 2 == 0
# 		anil_even_number_array.push x
# 	end
# end
# puts anil_even_number_array
# ------/ Put Even Numbers of Anil's Favorite Numbers /------ end

puts users["Anil"][:favorite_numbers].select {|x| x.even?}


