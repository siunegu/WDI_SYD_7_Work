class Car
	def drive(speed)
		@current_speed = speed
	end

	def brake
		@current_speed / 10
	end

	def current_speed
		@current_speed
	end
end

a_car = Car.new
a_car.drive(200)
puts a_car.brake