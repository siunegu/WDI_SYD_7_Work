

#You can only use attributes you define in your attr_accessor in class "Car".
class Car
	attr_accessor :color, :make, :model, :year, :top_speed
	def print
		puts "This is the car:"
		puts "Color: #{self.color}"
		puts "Make: #{self.make}"
		puts "Model: #{self.model}"
		puts "Year: #{self.year}"
		puts "Top Speed: #{self.top_speed}"
	end
end	

#Here we create a new 'object' inside the class "Car", an instance of the "Car class".
jag_e = Car.new
jag_e.color = "Green"
jag_e.make = "Jaguar"
jag_e.model = "E-Type"
jag_e.year = "1959"
jag_e.top_speed = "241"


class Person
	attr_accessor :first_name, :last_name, :email, :address
		def full_name
			"#{self.first_name}" + "#{self.last_name} "
		end
		def jump
			puts "#{self.first_name} jumped"
		end	
end

george = Person.new
george.first_name = "George"
george.last_name = "Uffzujungel"





