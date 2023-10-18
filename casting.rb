class MyFloatToInt
    def initialize(value)
        @value = value
    end

    def evaluate(environment)
        if @value.is_a? FloatPrimitive
            @value.evaluate(environment).to_i
        else
            raise 'error'
        end
    end
      
    def print
        "#{@value.evaluate(environment).to_i}"
    end
end

class MyIntToFloat
    def initialize(value)
        @value = value
    end

    def evaluate(environment)
        if @value.is_a? IntPrimitive
            @value.evaluate(environment).to_f
        else
            raise 'error'
        end
    end
      
    def print
        "#{@value.evaluate(environment).to_f}"
    end
end