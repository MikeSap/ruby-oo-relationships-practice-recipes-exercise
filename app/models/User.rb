class User
    attr_accessor :name
    @@users = []

def self.all
    @@users
end

def initialize(name)
    @name = name
    @@users.push(self)
end

def recipes_helper
    RecipeCard.all.select {|cards| cards.user == self}
end

def recipes
    self.recipes_helper.map {|card| card.recipe}
end

def add_recipe_card(recipe,date,rating)
    RecipeCard.new(recipe,date,rating,self)
end

def declare_allergy(ingredient)
    Allergy.new(ingredient,self)
end

def allergens_helper
   Allergy.all.select {|als| als.user == self}
end

def allergens
    self.allergens_helper.map {|als| als.ingredient}
end

def top_three_recipes_helper
   self.recipes_helper.sort_by {|recipe| recipe.rating}
end

def top_three_recipes
    self.top_three_recipes_helper.reverse.first(3)
end

def most_recent_recipe
    self.recipes_helper.last
end

# def safe_recipes
#     self.recipies_helper.select do |card| 
#         card.recipe
#     end    
# end

end