# Define a Car class. It should have attributes like max_speed, color, seating_material, etc.
# Define a few classes for different car makes/models
# For example define a Ferrari class with a high max_speed
# These classes should inherit from the Car class
# Instantiate several different cars objects

require "pry"

class Car
	attr_accessor :make, :hp, :max_speed, :transmission, :color, :seating_material
	def initialize(make, hp, max_speed, transmission, color, seating_material)
		self.make = make
		self.hp = hp
		self.max_speed = max_speed 
		self.transmission = transmission		
		self.color = color		
		self.seating_material = seating_material
	end
end

class Volkswagen < Car
	# def initialize(make, hp, max_speed, transmission, color, seating_material)
	# 	super
	# end
	def turbo
		puts "Got Turbo Inside"
	end
end
# binding.pry
class Golf < Volkswagen
	# def initialize(make, hp, max_speed, transmission, color, seating_material)
	# 	super
	# end
	def rev(accelerate)
		super
		puts "BRAAP BRAAP"
	end
end

gti = Golf.new("VW", "178", "152mph", "Auto", "White", "Chequered Nylon")
gti.turbo
# gti.max_speed = "152mph"
# gti.transmission = "Automatic"
# gti.color = "White"
# gti.seating_material = "chequered nylon"
# gti.rev("VWOOMVWOOOOOOM")
# gti.turbo

