class Desserts

    attr_accessor :name, :bakery

    @@all = [] 

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all 
    end

    def ingredients
        # Ingredients.all.select {|ing| ing.dessert == self}
        Recipe.all.map {|rec| rec.ingredients if rec.dessert == self}.flatten.compact
    end

    def calories
        total_cal = 0
        ingredients.each {|ing| total_cal += ing.calorie_count}
        total_cal
    end


end
