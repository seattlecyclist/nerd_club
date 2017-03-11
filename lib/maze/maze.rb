class Maze
  attr_accessor :start, :visited
  # m x n grid
  def initialize(matrix)
    @matrix = matrix
    @visited = []

    find_start
  end

  # provide a two d array of x,y cells traversed to get out
  def solve
    path = []

    stack = []
    stack.push(@start)

    while (stack.length > 0)
      cell = stack.pop
      @visited.push cell
      path.push cell

      if @matrix[cell[0]][cell[1]] == "E"
        puts "THE END!!!!"
        break
      end
      my_neighbors = neighbors(cell)
      stack.concat(my_neighbors - @visited)
    end
    puts "DONE"
    path
  end

  def neighbors(cell)
    moves = [-1, 0, 1]
    results = []

    moves.each do |row|
      c = candidate(cell[0] + row, cell[1])
      results << c if c
    end

    moves.each do |col|
      c = candidate(cell[0], cell[1] + col)
      results << c if c
    end
    results
  end

  def candidate(row_delta, column_delta)
    candidate = @matrix[row_delta][column_delta]
    [row_delta, column_delta] if candidate == 1 || candidate == "E"
  end

  def find_start
    @matrix.each_with_index do |row, row_index|
      row.each_with_index do |value, col|
        puts value;
        if value == "S"
          @start = [row_index , col]
          return
        end
      end
    end
  end
end