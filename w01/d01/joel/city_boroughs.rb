puts "Welcome to the annual meeting of the Australian Street Gangs.\n"
puts "To place you in the appropiate gang we'll \n need to know what 'hood you claim."
puts "Are you from north, west, east, or south Sydney?"
gang = gets.strip.downcase

if gang == "north"
	puts "\nAhh... You're a Norteno`!! You're officially a member of the bloods!"

elsif gang == "west"
	puts "\nWestsider, huh? Left coast is the best coast! Bloods for life!"

elsif gang == "east"
	puts "\nEastern Locs in the house!! You're officially a member of the Sharks.. Hit the beach!"

else gang == "south"
	puts "\nSOUTHSIDE!! El Diablos are the gang for you!! That's whats up!"
end		
