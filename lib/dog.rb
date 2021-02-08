# Add your code here

# Use a class variable to keep track of every instance of a class that is created.
# Write a class method to access the list of all instances of a class, stored in a class variable.
require 'pry'

class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end
    
    def self.print_all
        binding.pry
        @@all.map(&:name)
    end

    def self.clear_all
        @@all.clear
    end

    def save
        @@all << self
    end
end

wilbert = Dog.new("wilbert")

binding.pry
0