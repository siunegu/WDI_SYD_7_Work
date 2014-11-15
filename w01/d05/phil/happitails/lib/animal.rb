require_relative "shelter"
require_relative "menu"

class Animal < Shelter

  attr_accessor :name, :age, :gender, :species, :toys
 
  def initialize(name, age, gender, species, toys)

  self.name = name
  self.age = age
  self.gender = gender
  self.species = species
  self.toys = toys

  # self.add_animal_to_shelter
  add_animal_to_shelter(name, age, gender, species, toys)
 
  end
 
  def to_s
 
  end

  def adopt

  end

  def put_up_for_adoption

  end



end



# puts Animal
