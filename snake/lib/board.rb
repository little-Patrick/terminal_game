

class Board
  attr_reader :cells

  def initialize(row = 15, column = 30)
    @cells = {}
    ('a'...(('a'.ord) + row).chr).each do |row|
      (1..column).each do |col|
        coordinate = "#{row}#{col}"
        @cells[coordinate] = Cell.new(coordinate)
      end
    end
  end
end