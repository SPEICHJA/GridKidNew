# assert int operands
class MyB_And
    def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) & @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} & #{@right.toString})"
	end
end

class MyB_Or
    def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) | @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} | #{@right.toString})"
	end
end

class MyB_Xor
    def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) ^ @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} ^ #{@right.toString})"
	end
end

class MyB_Not
    def initialize(value)
        @value = value
	end

	def evaluate(environment)
		~(@value.evaluate(environment))
	end

	def toString
		"(~#{@value.toString}"
	end
end

class MyB_lshift
    def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) << @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} << #{@right.toString})"
	end
end

class MyB_rshift
    def initialize(left,right)
        @left = left
		@right = right
	end

	def evaluate(environment)
		@left.evaluate(environment) >> @right.evaluate(environment)
	end

	def toString
		"(#{@left.toString} >> #{@right.toString})"
	end
end