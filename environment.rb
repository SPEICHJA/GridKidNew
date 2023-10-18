class Environment
    def initialize(grid)
      @grid = grid
    end
  
    def getCell(addr)
      @grid.getCell(addr)
    end

    def getCellValue(addr)
      @grid.getCellValue(addr)
    end
  end