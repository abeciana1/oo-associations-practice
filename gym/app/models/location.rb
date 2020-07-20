require "pry"
class Location
    
    attr_accessor :city_name 

    @@all = []

    def initialize(city_name)
        @city_name = city_name
        @@all << self
    end

    def self.all
        @@all 
    end

    def trainers
        Gym.all.select do |gym|
            if gym.location == self
                gym.trainer
            end
        end
    end

    def self.least_clients
        search = Gym.all.each_with_object(Hash.new(0)) do |gym, hash|
            hash[gym.trainer.clients] += 1
        end 
        result = search.min { |a, b| a[1] <=> b[1]}.flatten[0]
        val = result.trainer.locations
        return val[0].location
    end

end
