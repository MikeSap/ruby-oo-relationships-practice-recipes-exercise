class Allergy
    attr_accessor :user, :ingredient
    @@allergy = []

    def self.all
        @@allergy
    end

    def initialize(ingredient,user)
       @user = user
       @ingredient = ingredient
       @@allergy.push(self)
    end
end