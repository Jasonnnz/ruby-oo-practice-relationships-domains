class Ingredients 

    attr_accessor :name, :calorie_count
    

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all 
    end

    def dessert 
        Recipe.all.map {|rec| rec.dessert if rec.ingredients.include?(self)}.uniq.compact
    end

    def bakery
        # self.dessert.bakery
        Recipe.all.map {|rec| rec.dessert.bakery if rec.ingredients.include?(self)}.uniq.compact
    end

    def self.find_all_by_name(ingredient_name)
        self.all.select {|ing| ing.name.include?(ingredient_name)}
    end

end
