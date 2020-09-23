class Recipe

attr_accessor :name
@@recipes = []

def self.all
    @@recipes
end

def initialize(name)
    @name = name
    @@recipes.push(self)
end

def user_cards
   RecipeCard.all.select {|cards| cards.recipe == self}    
end

def users
    self.user_cards.map {|card| card.user}
end

def ingredients_helper
    RecipeIngredient.all.select {|ing| ing.recipe == self}    
end

def ingredients
    self.ingredients_helper.map {|ing| ing.ingredient}
end

def self.most_popular
    all.max_by do |recipe|
        recipe.user.count
    end   
end

def allergens
    self.ingredients.select do |ing| 
        allergies = Allergy.all.map {|als| als.ingredient}
        allergies.include?(ing)       
    end
end

def add_ingredients(ingredients)
    ingredients.each do |i|
    RecipeIngredient.new(i,self)
    end
end

end