

class Board
  attr_reader :cells,
              :snake,
              :row,
              :column

  def initialize(row = 15, column = 30)
    @cells = {}
      ('a'...(('a'.ord) + row).chr).each do |row|
        (1..column).each do |col|
          coordinate = "#{row}#{col}"
          @cells[coordinate] = Cell.new(coordinate)
        end
      end

    @snake = Snake.new
    @row = row
    @column = column
  end

  def render
    render = @cells.values.map(&:appearance)
    binding.pry
    board = render.each_slice(column) {|x| puts "#{x} \n"}

  end
end