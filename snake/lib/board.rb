

class Board
  attr_reader :cells,
              :snake,
              :row,
              :column,
              :full

  def initialize(row, column)
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
    @full = false
  end

  def render
    render = @cells.values.map(&:appearance)
    return render.each_slice(column) { |slice| puts "#{slice.join(' ')}\n" }
  end

  def full?
    @full = true if @cells.values.all?(&:full)
    return @full
  end

  def food_drop
    full?
    return false if @full == true || @cells.values.any?{|x| x.appearance.include?("+")}
    loop do
      coordinate = @cells.values.map(&:coordinate).sample
      if @cells[coordinate].empty?
        @cells[coordinate].render('food')
        break
      end
    end
  end
end

