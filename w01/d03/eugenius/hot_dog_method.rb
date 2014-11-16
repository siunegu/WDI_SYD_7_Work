ingredient_roll = "Delicious Buns"
ingredient_sausage = "Big Long Kranksy"
ingredient_sauce = ["Musty Mustard Mulch", "Tasty Tomato Sauce", "Mamma's Own Mayonnaise"]
total_ingredients = [ingredient_roll, ingredient_sausage, ingredient_sauce]

def make_hotdog(ingredients)
	hot_dog = "This Delicious Hot_Dog is made of: #{ingredients}}"
	ingredients.each do |ingredient|
		hot_dog += "#{ingredient}\n"
	end
return hot_dog
end

delicious_hotdog = make_hotdog(total_ingredients)
puts delicious_hotdog

