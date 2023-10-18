# The statistical functions all accept two cell lvalues (addresses) 
class MyMax
    def initialize(addr1, addr2)
        @addr1 = addr1
        @addr2 = addr2
      end
    
      def evaluate(environment)
        
        if !(@addr1.is_a? MyLVal) || !(@addr2.is_a? MyLVal)
            raise 'error'
          end
        
        max = nil
        for row in (@addr1.row..@addr2.row)
          for col in (@addr1.col..@addr2.col)
            value = environment.getCellValue(row, col)
            max = value if max.nil? || value > max
          end
        end
    
        max
      end
    
      def toString
        "Maximum Value in grid (#{@addr1.toString}, #{@addr2.toString})"
      end
end

class MyMin
    def initialize(addr1, addr2)
        @addr1 = addr1
        @addr2 = addr2
      end
    
      def evaluate(environment)
        
        if !(@addr1.is_a? MyLVal) || !(@addr2.is_a? MyLVal)
            raise 'error'
          end
        
        min = nil
        for row in (@addr1.row..@addr2.row)
          for col in (@addr1.col..@addr2.col)
            value = environment.getCellValue(row, col)
            min = value if min.nil? || value < min
          end
        end
    
        min
      end
    
      def toString
        "Minimum Value in grid (#{@addr1.toString}, #{@addr2.toString})"
      end
    
end

class MyMean
    def initialize(addr1, addr2)
        @addr1 = addr1
        @addr2 = addr2
      end
    
      def evaluate(environment)
        
        if !(@addr1.is_a? MyLVal) || !(@addr2.is_a? MyLVal)
            raise 'error'
          end
        
        totalValues = 0
        sum = nil
        for row in (@addr1.row..@addr2.row)
          for col in (@addr1.col..@addr2.col)
            value = environment.getCellValue(row, col)
            totalValues = totalValues + 1
            if sum.nil?
                sum = sum
            else
                sum = sum + value

              end
          end
        end
    
        sum / totalValues
      end
    
      def toString
        "Mean Value in grid (#{@addr1.toString}, #{@addr2.toString})"
      end

end

class MySum
    def initialize(addr1, addr2)
        @addr1 = addr1
        @addr2 = addr2
      end
    
      def evaluate(environment)
        
        if !(@addr1.is_a? MyLVal) || !(@addr2.is_a? MyLVal)
            raise 'error'
          end
        
        sum = nil
        for row in (@addr1.row..@addr2.row)
          for col in (@addr1.col..@addr2.col)
            value = environment.getCellValue(row, col)
            if sum.nil?
                sum = sum
            else
                sum = sum + value
              end
          end
        end
    
        sum
      end
    
      def toString
        "Sum of Values in grid (#{@addr1.toString}, #{@addr2.toString})"
      end
end