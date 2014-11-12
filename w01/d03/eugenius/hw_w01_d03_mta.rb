require "pry"

Train_routes = { 
	"nline" => ["times square", "34th", "28th", "23rd", "union square", "8th"], 
	"lline" => ["8th", "6th", "union square", "3rd", "1st"], 
	"sixline" => ["grand central", "33rd", "23rd", "union square", "astor place"]}

p "Please put in the line that the station you alight will be on: nline, lline, sixline " 
start_line = gets.chomp.downcase
case start_line
	when "nline"
		puts "Please put in the station you will alight on: times square, 34th, 28th, 23rd, union square, 8th"
		start_stop = gets.chomp
	when "lline"
		puts "Please put in the station you will alight on: 8th, 6th, union square, 3rd, 1st"
		start_stop = gets.chomp
	when "sixline"
		puts "Please put in the station you will alight on: grand central, 33rd, 23rd, union square, astor place"
		start_stop = gets.chomp
	else
		puts "That's not a line..."
end

p "Please put in the line that the station you get off at will be on: nline, lline, sixline "
end_line = gets.chomp.downcase
case end_line
	when "nline"
		puts "Please put in the station you get off at: times square, 34th, 28th, 23rd, union square, 8th"
		end_stop = gets.chomp
	when "lline"
		puts "Please put in the station you get off at: 8th, 6th, union square, 3rd, 1st"
		end_stop = gets.chomp
	when "sixline"
		puts "Please put in the station you get off at: grand central, 33rd, 23rd, union square, astor place"
		end_stop = gets.chomp
	else
		puts "That's not a line..."
end

# start_line
# start_stop
# end_line
# end_stop 

### Logic ###
# Need: One track trip
## going to be get position of start_stop - position of end_stop, to integer and absolute value.
# Need: Two track trip
## two tracks, two positions of union square relative to start_stop and end_stop, add those differences. 
	

def subway_trip(start_line, start_stop, end_line, end_stop)
	if start_line == end_line
	first_line = []
	first_line = Train_routes.fetch(start_line)
	position1 = first_line.index(start_stop)
	position2 = first_line.index(end_stop)
	(position2.to_i - position1.to_i).abs
	else
	first_line = Train_routes.fetch(start_line)
	second_line = Train_routes.fetch(end_line)
	union1 = first_line.index("union square")
	union2 = second_line.index("union square")
	start_sect = first_line.index(start_stop)
	end_sect = second_line.index(end_stop)
	first_dist = (union1 - start_sect).abs
	second_dist = (union2 - end_sect).abs
	first_dist + second_dist
	end
end

p "Your number of stops is #{subway_trip(start_line, start_stop, end_line, end_stop)}."



# def one_line_trip(start_line, start_stop, end_line, end_stop)
# 	first_line = Train_routes.fetch(start_line)
# 	position1 = one_line.index(start_stop)
# 	position2 = one_line.index(end_stop)
# 	(position2.to_i - position1.to_i).abs
# end

# def two_line_trip(start_line, start_stop, end_line, end_stop)
# 	first_line = Train_routes.fetch(start_line)
# 	second_line = Train_routes.fetch(end_line)
# 	union1 = first_line.index("union square")
# 	union2 = second_line.index("union square")
# 	start_sect = first_line.index(start_stop)
# 	end_sect = second_line.index(end_stop)
# 	first_dist = (union1 - start_sect).abs
# 	second_dist = (union2 - end_sect).abs
# 	first_dist + second_dist
# end
