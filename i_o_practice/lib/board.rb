

class Board
  attr_reader :cells,
              :row,
              :column


  def initialize(row, column)
    @cells = {}
      (1..row).each do |r|
        (1..column).each do |c|
          coordinate = "#{r}#{c}"
          @cells[coordinate] = Cell.new(coordinate)
        end
      end

    @character = Character.new
    @head = @character.coord 
    @row = row
  end

  def valid_coordinate?(coordinate)
    if @cells[coordinate].empty?
      true
    else
      false
    end
  end

  def render
    binding.pry
    @cells[@head]valu

    @cells.values.map
  end

end