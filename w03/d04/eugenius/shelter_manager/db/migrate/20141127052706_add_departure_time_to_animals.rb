class AddDepartureTimeToAnimals < ActiveRecord::Migration
  def change
  	add_column :animals, :departure_time, :datetime
  end
end
