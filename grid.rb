class Grid
    def initialize(rows, cols)
      @grid = Array.new(rows) { Array.new(cols) }
    end

    def setCell(addr, expression)
      @grid[addr.row][addr.col] = expression
    end

    def getCell(addr)
      @grid[addr.row][addr.col]
    end
  
    def getCellValue(addr)
      expression = getCell(addr)
      return nil if expression.nil?
  
      expression.evaluate(Environment.new(self))
    end
    
    def valid_address?(address)
      address.row >= 0 && address.row < @grid.length &&
        address.col >= 0 && address.col < @grid[0].length
    end
  end

require_relative 'arithmetic'
require_relative 'primitive'
require_relative 'environment'
require_relative 'bitwise'
require_relative 'casting'
require_relative 'cellVals'
require_relative 'logicOps'
require_relative 'relational'
require_relative 'stats'

grid = Grid.new(5, 5)
env = Environment.new(grid)

lVal1 = MyLVal.new(2, 3)
lVal2 = MyLVal.new(1, 1)
lVal3 = MyLVal.new(4, 2)
lVal4 = MyLVal.new(3, 5)

# Set expressions in cells
grid.setCell(lVal1, MyAdd.new(IntPrimitive.new(5), IntPrimitive.new(3)))
grid.setCell(lVal2, MyB_Xor.new(IntPrimitive.new(2), IntPrimitive.new(8)))
grid.setCell(lVal3, MyL_And.new(BoolPrimitive.new(true), BoolPrimitive.new(true)))
grid.setCell(lVal4, MyGreaterThan.new(FloatPrimitive.new(1.37), FloatPrimitive.new(2.11)))

# Evaluate and print the value of a cell
result = env.getCellValue(lVal1)
puts result
result = env.getCellValue(lVal2)
puts result
result = env.getCellValue(lVal3)
puts result
result = env.getCellValue(lVal4)
puts result
