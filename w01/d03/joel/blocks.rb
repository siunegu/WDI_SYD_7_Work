people = ["Jack", "Wolf", "Bilbo Baggins"]

people.each {|person| puts person.upcase}

#  or.... 

max_loop_number = people.length
counter = 0

while counter < max_loop_number
  person = people|counter|

  counter += 1
end


# or even


people.each do |person|
  unless person == "Wolf"
    puts person.capitalize
  else
    puts person
  end


cap_students = students.map do |student|
  student.capitalize
end 

students_cap = []

students.each do |student|
  students_cap << student.capitalize
end



numbers = [ 1, 2, 3, 4].map do |number|
  x = number * 10
  y = x + x
  y / 2
end

p numbers


#__________________________________

tweets.map do |tweet|
  tweet.gsub("cloud", "butt")
end

#__________________________________

5.times do |x|
  puts "I have ran this counter #{x} times."
end

#__________________________________


5.upto(10) do
  puts "Test"
end


#__________________________________



10.downto(1) do
  puts "Test"
end


#__________________________________

splits = students.map do |student|
  student.split(" ").map { |name_part| name_part.capitalize}.join(" ")}
end

p splits  

#_________________________________





