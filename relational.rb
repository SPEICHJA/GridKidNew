class MyEquals
    def initialize(left, right)
        @left = left
        @right = right
    end
    
    def evaluate(environment)
        @left.evaluate(environment) == @right.evaluate(environment)
    end

    def toString
        "#{@left} == #{@right}"
    end
end

class MyNotEquals
    def initialize(left, right)
        @left = left
        @right = right
    end
    
    def evaluate(environment)
        @left.evaluate(environment) != @right.evaluate(environment)
    end

    def toString
        "#{@left} != #{@right}"
    end
end

class MyLessThan
    def initialize(left, right)
        @left = left
        @right = right
    end
    
    def evaluate(environment)
        @left.evaluate(environment) < @right.evaluate(environment)
    end

    def toString
        "#{@left} < #{@right}"
    end
end

class MyGreaterThan
    def initialize(left, right)
        @left = left
        @right = right
    end
    
    def evaluate(environment)
        @left.evaluate(environment) > @right.evaluate(environment)
    end

    def toString
        "#{@left} > #{@right}"
    end
end

class MyLessThanOrEqual
    def initialize(left, right)
        @left = left
        @right = right
    end
    
    def evaluate(environment)
        @left.evaluate(environment) <= @right.evaluate(environment)
    end

    def toString
        "#{@left} <= #{@right}"
    end
end

class MyGreaterThanOrEqual
    def initialize(left, right)
        @left = left
        @right = right
    end
    
    def evaluate(environment)
        @left.evaluate(environment) >= @right.evaluate(environment)
    end

    def toString
        "#{@left} >= #{@right}"
    end
end