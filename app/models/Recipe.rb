class Recipe

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    most_pop = RecipeCard.all.map {|recipecard| recipecard.recipe.name}
    most_pop.detect {|e| mpr.count(e) > 1}
  end

  def users
    RecipeCard.all.select {|recipecard| recipecard.recipe == self}.map{|recipecard| recipecard.user}
  end

  def ingredients
    recipe_ingr = RecipeIngredient.all.select{|recipe_ingredient| recipe_ingredient.recipe == self}
      recipe_ingr.map{|recipe_ingredient| recipe_ingredient.ingredient}
  end

  def allergens
    Allergen.all.select do |allergen|
      self.ingredients.include? allergen.ingredient
    end.map {|allergen| allergen.ingredient}
  end

  def add_ingredients(ingredient_array)
    ingredient.array.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

end
