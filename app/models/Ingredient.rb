class Ingredient

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    mca = Ingredient.most_common_allergen.map {|allergen| allergen.ingredient_name.name}
    mca.detect {|e| mca.count(e) > 1}
  end



end
