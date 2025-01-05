

class Board
  attr_reader :cells,
              :valid_coordinate

  def initialize(row, column)
    @cells = {}
      (1..row).each do |row|
        (1..column).each do |column|
          coordinate = "#{row}#{column}"
          @cells[coordinate] = Cell.new(coordinate)
        end
      end

    @valid_coordinate = false
  end
end