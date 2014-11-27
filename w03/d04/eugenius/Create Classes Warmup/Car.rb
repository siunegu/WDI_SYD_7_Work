class Ferrari
	attr_accessor :top_speed :chassis :engine_size :current_speed :acceleration 

	def intitialize(attr)
		@top_speed = attr[:top_speed]
		@chassis = attr[:chassis]
		@engine_size = attr[:engine_size]
		@current_speed = 0
		@acceleration = 20
	end

	def accelerate(desired_speed)
		while @current_speed <= desired_speed
			@current_speed += @acceleration 
		end	
	end

	def turbo(desired_turbo_speed)
		@current_speed = desired_turbo_speed
	end	
end

my_new_ferrari = Ferrari.new( 400, "ferrari", "big" )

