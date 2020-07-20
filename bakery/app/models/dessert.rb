require "pry"

class Dessert
    
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
       @name = name
       @bakery = bakery
       @@all << self
    end

    def self.all
        @@all
    end

    def dessert_ingredients
        DessertIngredient.all.select do |recipe|
            if recipe.dessert == self
                recipe.ingredient
            end
        end
    end

    def ingredients
        dessert_ingredients.collect do |recipe|
            recipe.ingredient
        end.uniq
    end

    def calories
        dessert_ingredients.sum do |dessert|
            dessert.ingredient.cal_count
        end.to_f
    end

end