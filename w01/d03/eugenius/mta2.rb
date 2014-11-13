require 'pry'

subway_lines = {
	:n_line => ["times square", "34th", "28th", "23rd", "union square", "8th"],
	:l_line => ["8th", "6th", "union square", "3rd", "1st"],
	:six_line => ["grand central", "33rd", "23rd", "union square", "astor place"],
}

def find_current_line(current, subways)
	if subways[:n_line].index(current)
		return [ "n line", subways[:n_line].index(current) ]
	elsif subways[:l_line].index(current)
		return [ "l line", subways[:l_line].index(current) ]
	elsif subways[:six_line].index(current)
		return [ "six line", subways[:six_line].index(current) ]
	else 
		return "YOU FUCKED UP"
	end
end


def find_destination_line(destination, subways)
	if subways[:n_line].index(destination)
		return [ "n line", subways[:n_line].index(destination) ]
	elsif subways[:l_line].index(destination)
		return [ "l line", subways[:l_line].index(destination) ]
	elsif subways[:six_line].index(destination)
		return [ "six line", subways[:six_line].index(destination) ]
	else 
		return "YOU FUCKED UP"
	end
end


current_line = find_current_line( "34th", subway_lines )
destination_line = find_destination_line( "8th", subway_lines )

num_stops = current_line[1]-destination_line[1]
current_line.slice(current_line[1],num_stops)

puts num_stops
puts current_line
puts destination_line


