module HappyTails
	class Animal
			attr_accessor :name,
										:age,
										:gender,
										:species,
										:toys

			def initialize(name, age, gender, species, toys)
				self.name = name
				self.age = age
				self.gender = gender
				self.species = species
				self.toys = toys
			end
			def to_s
	     "This Animal's Profile\n" +
	      "  Name: #{name}\n" +
	      "  Age: #{age}\n" +
	      "  Gender: #{gender}\n" +
	      "  Species: #{species}\n" +
	      "  Toys: #{toys}\n"							
			end
	end
end
