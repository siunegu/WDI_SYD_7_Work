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
			display_all_animals(@animals)
			display_all_clients(@clients)
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