class RecipeCard
attr_accessor :recipe, :date, :rating, :user
@@cards = []

def self.all
    @@cards
end

def initialize(recipe,date,rating,user)
    @recipe = recipe
    @date = date
    @rating = rating.to_f
    @user = user
    @@cards.push(self)
end



end