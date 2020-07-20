require "pry"

class Client

    attr_reader :name
    attr_accessor :trainer

    @@all = []

    def initialize(name)
        @name = name
        @trainer = trainer
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end
 
    def self.client
    end

    def trainers
        self.all
    end
   
end