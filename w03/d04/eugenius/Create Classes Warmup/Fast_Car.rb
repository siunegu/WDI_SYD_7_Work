class Car
	def intitialize(attr)
		@make = attr[:make]
		@model = attr[:model]
		self.current_speed = 0 
	end

	def current_speed #Getter Method
		return @current_speed
	end

	def set_current_speed(current_speed) #Setter Method
		@current_speed = current_speed
	end

	def drive(speed) 
		self.set_current_speed(speed)
	end
end

a_car = Car.new({
	make: "Holden",
	model: "Club Sport",
	})

a_car.current_speed 
a_car.drive(120)

