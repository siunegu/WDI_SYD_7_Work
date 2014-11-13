
class Building
  attr_accessor :address, :style, :has_doorman, :is_walk_up, :num_floors

  def initialize(address, style, has_doorman, is_walkup, num_floors)
    self.address = address
    self.style = style
    self.has_doorman = has_doorman
    self.is_walk_up = is_walk_up
    self.num_floors = num_floors
  end

  def to_s
    puts "Building"
  end  

end


Tower = Building.new("Sydney", "High Rise", true, false, 10)
Flats = Building.new("Newtown", "Townhouses", false, true, 3)
Dorms = Building.new("Randwick","Dorms", false, true, 3)




