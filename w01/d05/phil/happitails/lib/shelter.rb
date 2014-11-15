

class Shelter

  attr_accessor :name, :clients, :animals

  def initialize(name)
    self.name = name
    clients = []
    @@animals = Array.new

  end

  def add_animal_to_shelter(name, age, gender, species, toys)
    new_animal = {:name => name, :age => age, :gender=> gender, :species => species, :toys => toys}
    @@animals << new_animal
    puts "The animals at #{name} are: #{@@animals}" # rewrite with an each
    gets
    Menu.new
  end

  def to_s
    puts "this shelter is #{name}"

  end


end

 
  