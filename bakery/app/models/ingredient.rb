require "pry"

class Ingredient

    attr_reader :name
    attr_accessor :cal_count

    @@all = []

    def initialize(name, cal_count)
        @name = name
        @cal_count = cal_count
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert_ingredients
        DessertIngredient.all.select do |dessert|
            if dessert.ingredient == self
                dessert
            end
        end
    end

    def dessert
        dessert_ingredients.collect do |ingredient|
            ingredient.dessert
        end.uniq
    end

    def bakeries
        dessert_ingredients.collect do |recipe|
            recipe.dessert.bakery
        end.uniq
    end

    def self.find_all_by_name(ingredient)
       self.all.find_all do |item|
        if item.name.include?(ingredient)
            item
        end
       end
    end
end

