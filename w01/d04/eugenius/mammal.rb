require_relative "animal"

class Mammal < Animal
	def eat
		"I can eat! Yum Yum!"
	end

	def speak(action)
		puts action
		puts "i can speak"
	end	
end