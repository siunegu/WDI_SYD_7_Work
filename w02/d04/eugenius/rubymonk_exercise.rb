require 'pry'

class Restaurant
  def initialize(menu)
    # Initialize methods get called automatically whenever an instance of a class is created

    @menu = menu
    # this is stored as an instance variable so it is accessible throughout this class

  end

  def cost(*orders)
    # Splats assignment turns any parameter that is passed in - into an array

    puts "Orders: #{orders}"
    # This checks that orders is an array

    the_order = orders[0]
    # It is, so we want to find the first thing in the array - the hash we passed 

    puts "First Order: #{the_order}"
    # This is the first thing in the array from just above

    # binding.pry

    the_order.keys.inject(0) do |sum, element_of_array|
      # Lets break this down...
        # the_order = {:rice=>1, :noodles=>1}
        # the_order.keys = [:rice, :noodles]
        # the inject method uses the keys to return the value
          # you pass in a starting point (ie 0 is the first element in an array)
          # sum is a running total, by default it will add all the numbers stored as values in the hash

          #-------- OH SHIT --------#
          # # element_of_an_array is the index to reference the array
          # paper = [1, 2, 3, 4, 5]
          # paper.inject(0) do |folded_piece, section_of_paper|
          #   folded_piece * section_of_paper
          # end 
          # the result of each add is stored back into 'folded_piece'
          binding.pry
       cost = @menu[element_of_array] * the_order[element_of_array]
    end
  end
end

baker_bros = Restaurant.new(
  {
    rice: 3,
    noodles: 2
  }
)
puts baker_bros.cost(
  {
    rice: 1,
    noodles: 1
  }
)









