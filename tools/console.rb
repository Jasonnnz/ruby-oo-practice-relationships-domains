require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Pry.start

# jason = Guests.new('Jason')
# john = Guests.new('John')
# jimmy = Guests.new('Jimmy')
# james = Guests.new('James')
# jack = Guests.new('Jack')

# nyc = Listings.new("New York City")
# dallas = Listings.new("Dallas")
# chicago = Listings.new("Chicago")
# los_angeles = Listings.new("Los Angeles")
# buffalo = Listings.new("Buffalo")
# dallas_apt = Listings.new("Dallas")


# trip_1 = Trips.new(jason, nyc)
# trip_2 = Trips.new(jason, buffalo)
# trip_3 = Trips.new(john, nyc)
# trip_4 = Trips.new(jimmy, dallas)
# trip_5 = Trips.new(james, chicago)
# trip_6 = Trips.new(jack, los_angeles)
# trip_7 = Trips.new(jack, chicago)

# p Trips.all
magnolia = Bakery.new('magnolia')
cake = Desserts.new('cake',magnolia)
chocolate_cake = Desserts.new('chocolate cake', magnolia)
chocolate_mousse = Desserts.new('chocolate mousse', magnolia)
flour = Ingredients.new('flour',100)
sugar = Ingredients.new('sugar',200)
eggs = Ingredients.new('eggs',100)
chocolate = Ingredients.new('chocolate', 200)
chocolate_sprinkles = Ingredients.new('chocolate sprinkles', 100)

mousse_ingredients = [flour, sugar, eggs, chocolate, chocolate_sprinkles]
cake_ingredients = [flour, sugar, eggs]
chococale_cake_ingredients = [flour, sugar, eggs, chocolate_sprinkles, chocolate]
cake_recipe = Recipe.new(cake, cake_ingredients)
chocolate_cake_recipe = Recipe.new(chocolate_cake, chococale_cake_ingredients)
mousse_recipe = Recipe.new(chocolate_mousse, mousse_ingredients)


p Ingredients.find_all_by_name('chocolate')