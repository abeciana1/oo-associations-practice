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
            # binding.pry
        end
        # .flatten[0]

        # search = Gym.all.each_with_object(Hash.new(0)) do |gym, hash|
        #     hash[gym.trainer.clients] += 1
        # end 
        # search
        # binding.pry
        # result = search.max { |a, b| a[1] <=> b[1]
        # # binding.pry
        
        # # binding.pry
        # val = result.trainer
        # binding.pry
        # return val[0].trainer
    end

    
end