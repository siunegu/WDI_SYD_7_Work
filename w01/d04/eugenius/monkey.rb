require_relative "mammal"

class Monkey < Mammal
	def swing
		puts "I can swing!"
	end

	def speak(action)
		super
		puts "HowwoowooHowooo"
	end
end