require_relative '../config/environment.rb'

user1 = User.new("User 1")
user2 = User.new("User 2")
user3 = User.new("User 3")

recipe1 = Recipe.new("recipe 1")
recipe2 = Recipe.new("recipe 2")
recipe3 = Recipe.new("recipe 3")
recipe4 = Recipe.new("recipe 4")

ing1 = Ingredient.new("ing 1")
ing2 = Ingredient.new("ing 2")
ing3 = Ingredient.new("ing 3")
ing4 = Ingredient.new("ing 4")

recipecard1 = user1.add_recipe_card(recipe1, "9-21-2020", "1")
recipecard2 =user1.add_recipe_card(recipe2, "9-21-2020", "2")
recipecard3 =user1.add_recipe_card(recipe3, "9-21-2020", "3")
recipecard4 =user1.add_recipe_card(recipe4, "9-21-2020", "4")

user2.add_recipe_card(recipe1, "9-21-2020", "2")
user2.add_recipe_card(recipe2, "9-21-2020", "4")

user3.add_recipe_card(recipe2, "9-21-2020", "4")


recipe1.add_ingredients([ing1,ing2])
recipe2.add_ingredients([ing1,ing2,ing3,ing4])

user1.declare_allergy(ing3)
user2.declare_allergy(ing3)
user2.declare_allergy(ing4)



binding.pry
