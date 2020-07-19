require "pry"

class Guest

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def listings
        Trip.all.select do |trip|
            trip.guest == self
            trip.listing
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def trip_count
        trips.count
    end

    def self.pro_traveller
        Trip.all.each_with_object(Hash.new(0)) do |trip, hash|
            hash[trip.guest] += 1
            return hash.first[0]
        end
    end

    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end
end
