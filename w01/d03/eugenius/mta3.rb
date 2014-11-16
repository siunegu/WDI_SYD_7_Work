require "pry"

subway_lines = {
	"n_line" => { stops: ["times square", "34th", "28th", "23rd", "union square", "8th"] },
	"l_line" => { stops: ["8th", "6th", "union square", "3rd", "1st"] },
	"six_line" => { stops: ["grand central", "33rd", "23rd", "union square", "astor place"] },
}

start_line = "n_line"
start_station = "times square"
end_line = "six_line"
end_station = "33rd"

def num_of_stops(start_station, start_line, end_station, end_line, subway_lines)
	start_index = subway_lines[start_line][:stops].index(start_station)	
	# if start_index == 0 
	# 	start_index == start_index + 1
	# 	else	
			if start_line == end_line
				end_index = subway_lines[end_line][:stops].index(end_station) 
				puts "You are #{end_index - start_index} stops to destination." 
			else
				union_index = subway_lines[start_line][:stops].index("union square")
				(union_index - start_index).abs 		
				# stops_to_union = union_index - start_index
				# end_index = subway_lines[end_line][:stops].index(end_station)
				# stops_to_end = end_index - union_index 
				# puts "You are #{stops_to_union + stops_to_end} stops to destination!"
				# return stops_to_union + stops_to_end 
		end
	# end
end	
puts num_of_stops(start_station, start_line, end_station, end_line, subway_lines)
		binding.pry
