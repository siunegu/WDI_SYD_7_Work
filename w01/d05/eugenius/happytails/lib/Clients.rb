module HappyTails
	class Clients
			attr_accessor :client_name,
									  :client_age, 		
									  :num_children, 
									  :num_pets
									  :pet1
									  :pet2
									  :pet3

			def initialize(client_name, client_age, num_children, num_pets)
				self.client_name = client_name
				self.client_age = client_age
				self.num_children = num_children
				self.num_pets = num_pets
			end	

			def to_s
		    "Client Profile:\n" +
		    "  Name: #{client_name}\n" +
		    "  Age: #{client_age}\n" +
		    "  Number of Children: #{num_children}\n" +
		    "  Pets: " + pet1 			    				
			end

				
	end
end