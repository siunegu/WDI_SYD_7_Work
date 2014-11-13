require "pry"
# As a class, you will be creating an app that models the rental process.
# The premise is that "Owners of buildings can rent apartments to potential tenants"


### Logic ###
#### Attributes ####
# Where am I listing from? Regions
# What kind of place am I renting? Building
# What kind of features do i have in my Apartment? Apartment Attributes - price, is_occupied, sqft, num_beds, num_baths, renters
# What kind of person am I looking for? name, age, gender, apartment

# class DefineRegion
# 	sydney = {
# 		"north" => ["Chatswood", "Epping"]
# 		"south" => ["Hurstville", "Bankstown"]
# 		"east" => ["Kingsford", "Kensington"]
# 		"west" => ["Blacktown", "Parramatta"]
# 		}
# end

class Building
	attr_accessor :address, :style, :has_parking, :has_lift, :num_floors
	def initialize(address, style, has_parking, has_lift, num_floors)
		self.address = address
		self.style = style
		self.has_parking = has_parking
		self.has_lift = has_lift
		self.num_floors = num_floors
	end
	def print_building_attr
		puts "Address: #{self.address}"
		puts "Style: #{self.style}"
		puts "Parking: #{self.has_parking}"
		puts "Lift: #{self.has_lift}"
		puts "Floors: #{self.num_floors}"
	end
end

class Apartments < Building
	attr_accessor :aptname, :price, :is_occupied, :sqm, :num_beds, :num_baths, :tenants 
	def initialize(aptname, price, is_occupied, sqm, num_beds, num_baths, tenants)
		self.aptname = aptname
		self.price = price
		self.is_occupied = is_occupied
		self.sqm = sqm
		self.num_beds = num_beds
		self.num_baths = num_baths
		self.tenants = tenants								
	end
	def occupied
		puts self.is_occupied
	end	
	def print_aptname
		puts self.aptname
	end
end

class Tenant < Apartments
	attr_accessor :name, :age, :gender, :is_occupying, :building	
	def initialize(name, age, gender, is_occupying, building)
		self.name = name
		self.age = age
		self.gender = gender
		self.is_occupying = is_occupying
		self.building = building
	end	
end


# Building 1
b1 = Building.new("42 Wallaby Way", "High Rise", true, true, 2)
b1.print_building_attr
# Building 1 Apartments
b1_one = Apartments.new("b1_one", 1000, true, 40 , 2, 2, 2)
# b1_one.print_building_attr
b1_two = Apartments.new("b1_two", 1000, false, 40 , 1, 2, 2)
# b1_two.print_building_attr
# Building 2
b2 = Building.new("888 Chinatown Rd", "Flat", false, false, 4)
b2.print_building_attr
# Building 2 Apartments
b2_one = Apartments.new("b2_one", 888, false, 40 , 4, 2, 2)
# b2_one.print_building_attr 
b2_two = Apartments.new("b2_two", 888, true, 40 , 2, 2, 2)
# b2_two.print_building_attr
# Building 2 & Building 2 Apartments Tenants
p1 = Tenant.new("Joe", 19, "male", "true", "b1_one")
p2 = Tenant.new("Jess", 18, "female", "true", "b1_one")
p3 = Tenant.new("Jo", 29, "female", "false", "b1_two")
p4 = Tenant.new("Chan", 39, "male", "true", "b1_two")
p5 = Tenant.new("Chong", 19, "shemale", "true", "b2_one")
p6 = Tenant.new("Ching", 59, "male", "true",	"b2_one")
p7 = Tenant.new("Bang", 69, "female", "true", "b2_two")
p8 = Tenant.new("Bong", 69, "male", "true", "b2_two")



# def list_available_apartments(tenant_list)
# 	tenant_list.select { |tenant_list|
# 		tenant_list.is_occupying == true
# 		print tenant_list.building
# 	}
# end
######## LIST VACANT BUILDINGS ###########
print "Listing all Vacant Buildings: \n"
all_tenants = [p1, p2, p3, p4, p5, p6, p7, p8]
vacant = all_tenants.select {|x| x.is_occupying == "false"}
list_of_vacant_buildings = vacant.map {|x| x.building } 
puts list_of_vacant_buildings
######## LIST APARTMENTS IN A BUILDING ###########
print "Listing all apartments in a Building: \n"
all_apartments =  [b1_one, b1_two, b2_one, b2_two] 
list_all = all_apartments.select { |x| x.print_aptname }
puts list_all
######## LIST APARTMENTS IN A BUILDING: WITH TWO BEDS ###########
print "Listing all apartments with only two beds: \n"
all_apartments =  [b1_one, b1_two, b2_one, b2_two] 
two_beds = all_apartments.select { |x| x.num_beds == 2 }
list_all_two_beds = two_beds.map { |x| x.aptname }
puts list_all_two_beds 
######## LIST APARTMENTS IN A BUILDING: WITH TWO BEDS ###########

# all_tenants.select do |p| p.is_occupying  
# 	print p.name
# end

# occupy_list = all_tenants.collect { |person| person. }
# puts occupy_list
# if all_tenants.each do |person|
# 		person.name == "true"
# 		puts person.name
# 	end
# end

# if occupy_list.each == "true"
# 	puts all_tenants.map { |person| person.name }
# end


# list_available_apartments(all_tenants)


# list_of_numbers = (0...10).to_a
# sum = 0

# list_of_numbers.each do |x|

# 	if ( x % 3 == 0 || x % 5 == 0 )
# 		puts "X: #{x}"
# 		sum += x
# 	end

# end

# puts "Sum: #{sum}"


# mployees.each_index do |i|
# 	puts i + 1 #Output 1 to 4
# end

# lower_case = ["hi", "these", "are", "some", "words"]

# upper_case = lower_case.map { |word| word.upcase }

# puts upper_case.inspect

# #=> ["HI", "THESE", "ARE", "SOME", "WORDS"]




