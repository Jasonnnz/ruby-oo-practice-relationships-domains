class Bakery

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        # returns dessert instances that belongs to this bakery
        Desserts.all.select {|dessert| dessert.bakery == self}
    end

    def ingredients
        # desserts.map {|dessert| dessert.ingredients}.flatten
        desserts.map {|des| des.ingredients}.flatten.uniq
    end

    def shopping_list
        ingredients.map {|ing| ing.name}
    end

    def average_calories
        avg_calorie = 0
        desserts.each {|dessert| avg_calorie += dessert.calories}
        avg_calorie / desserts.count
    end

end
