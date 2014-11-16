class LichKing
	attr_accessor :name, :weapon, :boots, :attribute

	def sword
		puts "#{self.weapon} glistens in the snow."
	end
	def buy_boots
		puts "#{self.name}" +" bought " + "#{self.boots}."
	end
end

#Define new object in class "Lichking" 
death_knight = LichKing.new
#Define attribute "name" in object death_knight in class "Lichking" 
death_knight.name = "Arthus"
death_knight.weapon = "Frostmourne"
death_knight.boots = "Boots of Travel"
death_knight.attribute = "Strength"

death_knight.sword
death_knight.buy_boots