class IntPrimitive
    
    def initialize(value)
        @value = value
    end

    def evaluate(environment)
        if @value.is_a? Integer
            @value
        else
            raise 'error'
        end
    end
      
    def print
        "#{@value}"
    end
      
end

class FloatPrimitive

    def initialize(value)
        @value = value
    end
    
    def evaluate(environment)
        if @value.is_a? Float
            @value
        else
            raise 'error'
        end
    end
    
    def print
        "#{@value}"
    end
end

class BoolPrimitive

    def initialize(value)
        @value = value
    end
    
    def evaluate(environment)
        if @value.is_a?(TrueClass) || @value.is_a?(FalseClass)
            @value
        else
            raise 'error'
        end
    end

    def print
        "#{@value}"
    end
end

class StringPrimitive

    def initialize(value)
        @value = value
    end
    
    def evaluate(environment)
        if @value.is_a? String
            @value
        else
            raise 'error'
        end
    end

    def print
        "#{@value}"
    end
end