require_relative "Animal"
require_relative "Clients"
require "pry"
module HappyTails
	class Application

		def start
		@animal_database = [
			 	pet01 = Animal.new("doge", 2, "male", "dog", "wow such"),
			 	pet02 = Animal.new("nyan", 2, "female", "cat", "rainbow")
		]
		@client_database = [
				Clients.new("max", 2, 32, 2),
				Clients.new("zimmerman", 2, 32, 2)				
		]		
		menu
		end

		def menu
			puts "Welcome to the HappyTails Animal Shelter! What can we do for you today?"
			puts "(na) New animal for adoption\n"
			puts "(nc) New client for adoption\n"
			puts "(la) List all animals\n"
			puts "(lc) List all clients\n"
			puts "(co) Client options\n"			
			puts "(q) Quit \n"
			response = gets.strip
				case response
					when "na"
						new_animal 
					when "nc"
						new_client
					when "la"
						list_animals
						menu
					when "lc"
						list_clients
						menu						
					when "q"
						exit
					when "co"	
						client_login
					else
						puts "Not an option."
						menu
				end				
		end	

		def new_animal
			#Gets input for each name, age, gender, species, toys,				
			puts "name: "
			new_name = gets.chomp.to_s
			@new_animal_entry = puts "#{new_name}"
			puts "age: "			
			new_age = gets.chomp.to_i
			puts "gender: "						
			new_gender = gets.chomp.to_s
			puts "species: "						
			new_species = gets.chomp.to_s
			puts "toys: "						
			new_toys = gets.chomp.to_s
			@new_animal_entry = Animal.new(new_name, new_age, new_gender, new_species, new_toys)
			@animal_database << @new_animal_entry		
			menu	
		end

		def list_animals
			@animal_database.each do |x|
				puts x
			end	
		end

		def new_client
			#Gets input for each name, age, num_children, num_pets				
			puts "name: "
			new_name = gets.chomp.to_s
			puts "age: "			
			new_age = gets.chomp.to_i
			puts "number of children: "						
			num_children = gets.chomp.to_s
			puts "pets: "						
			num_pets = gets.chomp.to_i
		
			new_client_entry = Clients.new(new_name, new_age, num_children, num_pets)
			@client_database << new_client_entry
			menu	
		end

		def list_clients
			@client_database.each do |x|
				puts x
			end	
		end

		def client_login
			puts "Welcome back, what is your name?"
			@client_response = gets.chomp.to_s.downcase
			@client_database.each do |x|
				if x.client_name.include?(@client_response)
					puts "Welcome back #{@client_response}!\n"
					puts "What can we do for you today?\n"
					puts "(a)Adopt new animal. (p)Put animal for adoption."
					service_response = gets.chomp.to_s.downcase
					case service_response
					when "a"
						adopt_new
						menu
					when "p"
						put_for_adopt
						menu
					else
						puts "Not an option."						
						client_login
					end	
				else
					puts "Sorry we couldn't find you in our database,\n"
					puts "Do you want to sign up? (y/n)\n"
					signup_response = gets.chomp.to_s.downcase
					case signup_response
					when "y"
						new_client
					when "n"
						puts "Sorry we couldn't help you."
						menu
					end	
				end
			end	
			menu
		end		
		#You can't run adopt_new method unless you go through client_login
		#Instance variable "@client_response" is the the name of the client
		def adopt_new
			list_animals
			puts "Which animal would you like to adopt #{@client_response}?"
			adopt_response = gets.chomp.to_s.downcase
			adopting = @animal_database.select { |x| x.name == adopt_response }
			active_client = @client_database.select { |x| x.client_name == @client_response }
			active_client << adopting
			# @animal_database.delete(adopting) #gets rid of it from the db
			# puts adopting
			# animal_adopt_name_values = @animal_database.map do |x| 
			# 	x.name
			# end
			# if selected_animal = animal_adopt_name_values.include?(adopt_response)
			# 	#add that animal from an input as pet 1 to Client's name
				 

			# end
		end	

		def put_for_adopt

		end
	end
end

######### Logic ###############
#method that asks for new Animal
#method that ask for new client
#Adopt class
##method that lets you adopt
##method that lets you put up for adoption


