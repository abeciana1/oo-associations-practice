require "pry"
class Gym
    attr_accessor :location, :trainer
    
    @@all = []
    
    def initialize(location, trainer)
        @location = location
        @trainer = trainer
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.find_location(trainer)
        self.all.select do |gym|
            if gym.trainer == trainer
                gym.location
            end
        end
    end

end