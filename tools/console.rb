require_relative '../config/environment.rb'
jessie = User.new("jessie")
brian = User.new("brian")

curry = Recipe.new("curry")
burger = Recipe.new("burger")
spaghetti = Recipe.new("spaghetti")
fried_rice = Recipe.new("fried rice")

jessie.add_recipe_card(burger, "11/6", 8)
jessie.add_recipe_card(spaghetti, "11/5", 9)
jessie.add_recipe_card(fried_rice, "11/4", 7)

peanut = Ingredient.new("peanut")
chicken = Ingredient.new("chicken")
curry_recipe = RecipeCard.new("11/7/2018", 10, jessie, curry)
chicken_allergy = Allergen.new("jessie", "chicken")
beef = Ingredient.new("beef")
lettuce = Ingredient.new("lettuce")
buns = Ingredient.new("buns")
cheese = Ingredient.new("cheese")
RecipeIngredient.new(burger, beef)
RecipeIngredient.new(burger, lettuce)
RecipeIngredient.new(burger, buns)
RecipeIngredient.new(burger, cheese)
brian.declare_allergen(chicken)

jessie.declare_allergen(peanut)



binding.pry
