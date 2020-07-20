require "pry"

class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        desserts.collect do |dessert|
            dessert.ingredients
        end.flatten.uniq
    end

    def desserts
        Dessert.all.select do |dessert|
            if dessert.bakery == self
                dessert
            end
        end.uniq
    end

    def average_calories
        total_calories = ingredients.sum do |ingredient|
            ingredient.cal_count
        end
        (total_calories.to_f / desserts.count.to_f)
    end

    def shopping_list
        search = ingredients.collect { |item| item.name }.uniq.join(', ')
    end
end
