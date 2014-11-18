require_relative "building"

class Apartment < Building
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize(price, is_occupied, sqft, num_beds, num_baths, renters)
    self.price = price
    self.is_occupied = is_occupied
    self.sqft = sqft
    self.num_beds = num_beds
    self.num_baths = num_baths
    self.renters = renters
  end
end