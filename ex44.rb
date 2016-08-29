
=begin
class Parent
    def override()
        puts "PARENT override()"
    end

    def implicit()
        puts "Parents implicit()"
    end

    def altered()
        puts "Parents altered"
    end
end

class Child < Parent
    def override()
        puts "Child override()"
    end

    def altered()
        puts "Child, BEFORE Parent altered()"
        super
        puts "Child, AFTER Parent altered()"
    end
end

dad = Parent.new
son = Child.new

dad.implicit
son.implicit

puts "-" * 10

dad.override
son.override

puts "-" * 10

dad.altered
son.altered

puts "-" * 10

=end

#COMPOSITION

=begin
class Other

    def override
        puts "Other override"
    end

    def implicit
        puts "Other implicit"
    end

    def altered 
        puts "Other altered"
    end
end

class Child
    def initialize
        @other = Other.new
    end

    def implicit
        @other.implicit
    end

    def override
        puts "Child override"
    end
    
    def altered
        puts "Child, BEFORE Other altered"
        @other.altered
        puts "Child, AFTER Other altered"
    end
end

son = Child.new

son.implicit
son.override
son.altered
=end

module Other

    def override
        puts "Other override"
    end

    def implicit
        puts "Other implicit"
    end

    def Other.altered 
        puts "Other altered"
    end
end

class Child
    include Other

    def override
        puts "Child override"
    end
    
    def altered
        puts "Child, BEFORE Other altered"
        Other.altered
        puts "Child, AFTER Other altered"
    end
end

son = Child.new

son.implicit
son.override
son.altered
