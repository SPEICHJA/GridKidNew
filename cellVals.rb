#address (x, y)
class MyLVal
    def initialize(row,col)
        @row = row
        @col = col
	end

	def evaluate(environment)
        if @row.is_a?(Integer) && @col.is_a?(Integer)
          environment.getCell(self)
        else
          raise 'error'
        end
      end

    def row
      @row
    end

    def col
      @col
    end

	def toString
		"(#{@row.toString},#{@col.toString})"
	end

end

#value
class MyRVal
    def initialize(row,col)
        @row = row
		@col = col
	end

	def evaluate(environment)
        if @col.is_a?(Integer) && @col.is_a?(Integer)
          environment.getCellValue(self)
        else
          raise 'error'
        end
  end

  def row
    @row
    end
  
  def col
    @col
  end

	def toString
		"(#{@row.toString},#{@col.toString})"
	end
end