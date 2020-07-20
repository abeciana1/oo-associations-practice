require "pry"

class Trainer

    attr_reader :name
    attr_accessor :exp

    @@all = []

    def initialize(name, exp)
        @name = name
        @exp = exp
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select { |client| client.trainer == self }
    end

    def client_count
        clients.count
    end

    def locations
        Gym.all.select do |gym|
            if gym.trainer == self
                gym.location
            end
        end
    end

    def self.most_clients
        self.all.max do |a, b| 
            a.client_count <=> b.client_count
        end
    end

    
end