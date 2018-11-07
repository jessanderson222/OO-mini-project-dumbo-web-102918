class User

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select {|recipecard| recipecard.user == self}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end

  def top_three_recipes
    recipes.sort {|first, second| first.rating <=> second.rating}[-3..-1]
    #top_three = self.recipes.select {|recipe| recipe.rating}
    #top_three.sort {|first, second| first.rating <=> second.rating}[-3..-1]
  end

  def most_recent_recipe
    recipes.last 
  end

end
