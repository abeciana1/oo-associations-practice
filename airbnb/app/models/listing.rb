require "pry"

class Listing

    attr_accessor :city_name

    @@all = []

    def initialize(city_name)
        @city_name = city_name
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        Trip.all.collect do |trip|
            trip.listing == self
            trip.guest
        end
    end

    def trips
       Trip.all.select do |trip|
        trip.listing == self
       end
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city_name == city
        end
    end

    # def self.most_popular
    #     Trip.all.each_with_object(Hash.new(0)) do |trip, hash|
    #         hash[trip.listing] += 1
    #         return hash.first[0]
    #     end
    # end
end