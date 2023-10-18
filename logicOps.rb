#assert have boolean operands
class MyL_And
    def initialize(left, right)
      @left = left
      @right = right
    end
  
    def evaluate(environment)
      if @left.is_a?(BoolPrimitive) && @right.is_a?(BoolPrimitive)
        @left.evaluate(environment) && @right.evaluate(environment)
      else
        raise 'error'
      end
    end
  
    def to_s
      "#{@left} && #{@right}"
    end
  end
  
  class MyL_Or
    def initialize(left, right)
      @left = left
      @right = right
    end
  
    def evaluate(environment)
      if @left.is_a?(BoolPrimitive) && @right.is_a?(BoolPrimitive)
        @left.evaluate(environment) || @right.evaluate(environment)
      else
        raise 'error'
      end
    end
  
    def to_s
      "#{@left} || #{@right}"
    end
  end
  
  class MyL_Not
    def initialize(value)
      @value = value
    end
  
    def evaluate(environment)
      if @value.is_a?(BoolPrimitive)
        !(@value.evaluate(environment))
      else
        raise 'error'
      end
    end
  
    def toString
      "!#{@value}"
    end
  end