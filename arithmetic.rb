#assert numeric operands that are compatible in eval
class MyAdd
    def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) + @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} + #{@right.toString})"
	end
end

class MySubtraction
	def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) - @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} - #{@right.toString})"
	end
end

class MyMult
	def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) * @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} * #{@right.toString})"
	end
end

class MyDiv
	def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) / @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} / #{@right.toString})"
	end
end

class MyModulo
	def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) % @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} % #{@right.toString})"
	end
end

class MyExponentiation
	def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) ** @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} ** #{@right.toString})"
	end

end