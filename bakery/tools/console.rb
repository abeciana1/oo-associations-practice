require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bakery1 = Bakery.new("Pie Factory")
bakery2 = Bakery.new("Willy Wonka")

dessert1 = Dessert.new("Apple Pie", bakery1)
dessert2 = Dessert.new("Pecan", bakery1)
dessert3 = Dessert.new("Chocolate Bar", bakery2)
dessert4 = Dessert.new("candy apple", bakery2)

ingredient1 = Ingredient.new("Flour", 5)
ingredient2 = Ingredient.new("chocolate", 10)
ingredient3 = Ingredient.new("Apple", 4)
ingredient4 = Ingredient.new("chocolate sprinkles", 2)

des_in1 = DessertIngredient.new(dessert1, ingredient1)
des_in2 = DessertIngredient.new(dessert1, ingredient3)
des_in3 = DessertIngredient.new(dessert3, ingredient2)
des_in4 = DessertIngredient.new(dessert4, ingredient3)

dessert1.bakery

bakery1.desserts

ingredient3.dessert_ingredients

dessert1.dessert_ingredients

dessert1.ingredients

dessert1.calories

ingredient3.dessert

ingredient3.bakeries

Ingredient.find_all_by_name("chocolate")

bakery1.ingredients

bakery1.average_calories

bakery1.shopping_list

binding.pry
0