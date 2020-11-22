require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Pry.start

jason = Guests.new('Jason')
john = Guests.new('John')
jimmy = Guests.new('Jimmy')
james = Guests.new('James')
jack = Guests.new('Jack')

nyc = Listings.new("New York City")
dallas = Listings.new("Dallas")
chicago = Listings.new("Chicago")
los_angeles = Listings.new("Los Angeles")
buffalo = Listings.new("Buffalo")
dallas_apt = Listings.new("Dallas")


trip_1 = Trips.new(jason, nyc)
trip_2 = Trips.new(jason, buffalo)
trip_3 = Trips.new(john, nyc)
trip_4 = Trips.new(jimmy, dallas)
trip_5 = Trips.new(james, chicago)
trip_6 = Trips.new(jack, los_angeles)
trip_7 = Trips.new(jack, chicago)

p Trips.all
