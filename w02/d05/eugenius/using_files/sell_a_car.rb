# Step 0
print "Do you want to start again (y/n)"
start_again = gets.strip
if start_again == 'y'
	if File.exist? 'ad.txt'
		File.unlink('ad.txt')
	end	
else	
	puts "Do you want to see the car ad? (y/n)"
	show_ad = gets.strip
	if show_ad == 'y'
		showme = File.open('ad.txt', 'r')
		puts showme.read
	else
	end	
end	

# Step 1: Make sure we have a file
unless File.exists? 'ad.txt'
	file = File.new('ad.txt', 'a+')
	file.close
	puts "Created file"

# Step 2: Ask questions
print "Number of KMs: "
number_of_kms = gets.strip.to_i

print "What kind of doors does it have: "
door_type = gets.strip

print "Does it have a sunroof: "
sunroof = gets.strip

print "What kind of engine: "
engine = gets.strip

print "What is the asking price: "
price = gets.strip.to_i

# Step 3: Write the data
File.open('ad.txt', 'a+') do |ad_file|
	ad_file.write("Number of KMs: #{number_of_kms}\n")
	ad_file.write("Door type: #{door_type}\n")
	ad_file.write("Sun Roof: #{sunroof}\n")
	ad_file.write("Engine: #{engine}\n")					
	ad_file.write("Asking Price: #{price}\n")		
end		

# Step 4: Display the file
file = File.new('ad.txt', 'r')
puts file.read	
else 
	puts "Already exists"

end

