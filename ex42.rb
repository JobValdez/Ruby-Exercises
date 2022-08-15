## Animal is-a object look at the extra credit
class Animal
end

## ??
class Dog < Animal

    def initialize(name)
        ## dog has-a name 
        @name = name
    end
end

## ??
class Cat < Animal

    def initialize(name)
        ## cat has-a name
        @name = name
    end
end

## Person is a object
class Person

    def initialize(name)
        ## person has-a name
        @name = name

        ## Person has-a pet of some kind
        @pet = nil

        ## Person has-a list of hobbies
        @hobbies = []

        ## Dietary Preferences
        @preferences = {}
    end

    attr_accessor :pet, :hobbies, :preferences
end

## ??
class Employee < Person

    def initialize(name, salary)
        ## ?? hmm what is this strange magic? 

        ##That's you can run the initialize of the parent 
        #class Person before you do what you need inside Employee. 
        #Go search for "ruby super" online and read the various advice on it.
        ## I do not know exactly
        super(name)
        ## Person has-a salary
        @salary = salary
    end

end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## Rover is-a Dog
rover = Dog.new("Rover")

## Satan is-a Cat
satan = Cat.new("Satan")

## Mary is-a Person
mary = Person.new("Mary")

## Mary has-a pet(cat) named satan
mary.pet = satan

## fran is-a employee
frank = Employee.new("Frank", 120000)

## frank has-a pet named rover
frank.pet = rover

## flipper is-a fish
flipper = Fish.new()

## crouse is-a salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()