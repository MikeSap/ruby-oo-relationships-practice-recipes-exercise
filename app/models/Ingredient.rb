class Ingredient
    attr_accessor :name
    @@ingredients = []


    def self.all
        @@ingredients
    end


    def initialize(name)
        @name = name
        @@ingredients.push(self)
    end

    def self.most_common_allergen
       all.max_by do |ing| 
        Allergy.all.select {|al| al.ingredient == ing}.count
        end
    end

end
