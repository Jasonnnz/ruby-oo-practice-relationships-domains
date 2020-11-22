class Listings

    attr_accessor :city_name

    @@all = [] 

    def initialize(city_name)
        @city_name = city_name
        @@all << self
    end

    
    def trips 
        Trips.all.select {|trip| trip.listing == self}
    end
    
    def guests
        trips.map {|trip| trip.guest}
    end

    def trip_count
        trips.count 
    end

    def self.all 
        @@all 
    end

    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city_name == city}
    end

    def self.most_popular
        self.all.max_by {|listing| listing.trip_count}
    end

end
