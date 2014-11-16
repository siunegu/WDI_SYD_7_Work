require_relative "animals"
require_relative "clients"

module HappiTrails
	class Application
		def start
			@animals = [ 
			Animal.new("Jerry", 4, "Male", "Lion", "Soccer ball, Squeaky toy, Stuffed Panda"),
			Animal.new("Lois", 11, "Female", "Elephant", "Jump rope, Water can, Football")
			]

			@clients = [
			Client.new("Jonah Spencer", 3, 35, 2),
			Client.new("Katie Smith", 2, 30, 5)
			]

			@shelter = [
			@animals, @clients	
			]

			# display_all_animals(@animals)
			print "(AA)Add new animal, (AC)Add new client, 
			(Q)Quit: "	


			response = gets.chomp.downcase


			while response != "q"
				case response
					when "aa"
						add_new_animals(@animals)
					when "ac"
						add_new_clients(@clients)
					else
						puts "Please type a valid response"	
				end
				response = gets.chomp.downcase
			end

			
			# display_all_clients(@clients)

			# add_new_clients(@clients)
		end

		def display_all_animals(animal_array)
			
			animal_array.each do |animal|
				puts "#{animal}"
			end
		end

		def display_all_clients(client_array)
			client_array.each do |client|
				puts "#{client}"
			end
		end


		def add_new_animals(animal_array)
			print "What is the name of your pet?"
			name = gets.chomp
			print "What is the age of your pet?"
			age = gets.chomp
			print "What is the gender of your pet?"
			gender = gets.chomp
			print "What is the species of your pet?"
			species = gets.chomp
			print "What are some of your pet's toys?"
			toys = gets.chomp

			extra_animal = Animal.new(name, age, gender, species, toys)
			@animals = animal_array << extra_animal
			@animals.each do |animal|
				puts "#{animal}"
			end
			print "(AA)Add new animal, (AC)Add new client, 
			(Q)Quit: "	
		end

		def add_new_clients(client_array)
			print "What is the name of your client?"
			name = gets.chomp
			print "How many children does your client have?"
			number_of_children = gets.chomp
			print "What is the age of your client?"
			age = gets.chomp
			print "How many pets does your client already have?"
			number_of_pets = gets.chomp

			extra_client = Client.new(name, number_of_children, age, number_of_pets)
			@clients = client_array << extra_client
			@clients.each do |client|
				puts "#{client}"
			end
			print "(AA)Add new animal, (AC)Add new client, 
			(Q)Quit: "	
		end


	


		
	end
end



   #    buildings = [
   #      Building.new(
   #        "123 Fake Street, Fake Town",
   #        "Victorian",
   #        true,
   #        true,
   #        5,
   #        building_one_apartments
   #      ),
   #      Building.new(
   #        "123 Fake Street, Fake Town",
   #        "Victorian",
   #        true,
   #        true,
   #        5,
   #        building_two_apartments
   #      )
   #    ]


   # def list_apartments(buildings_array)
   #    print "Choose a building: "
   #    building_number = gets.strip.to_i

   #    single_building = buildings_array[building_number]

   #    single_building.apartments.each do |a|
   #      puts "#{single_building.apartments.index(a)}: #{a}"
   #    end
   #  end