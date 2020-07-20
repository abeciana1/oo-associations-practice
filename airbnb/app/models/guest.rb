require "pry"
require_relative './trip.rb'

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
        pro = Trip.all.each_with_object(Hash.new(0)) do |trip, hash|
                hash[trip.guest] += 1
                hash.first[0]
        end
        result = pro.select do |key, value|
            binding.pry
            if value > 1
                key
            end
        end
        result.keys
    end

    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end
end