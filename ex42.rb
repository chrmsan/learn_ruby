class Animal
    def initialize(name)
        @name = name
    end
end

class Dog < Animal
end

class Cat < Animal
end

class Person < Animal
    def initialize(name)
        super
        @pet = nil 
    end
    attr_accessor :pet
end

class Employee < Person
    def initialize(name, salary)
        super(name)
        @salary = salary
    end
end

class Fish 
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new("Rover")

satan = Cat.new("Satan")

mary = Person.new("Mary")

mary.pet = satan

frank = Employee.new("Frank", 12000)

frank.pet = rover

flipper = Fish.new

crouse = Salmon.new

harry = Halibut.new