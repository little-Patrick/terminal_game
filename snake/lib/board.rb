

class Board
  attr_reader :cells,
              :snake,
              :food_coord,
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

    @snake = Snake.new
    @food_coord = ''
    @row = row
    @column = column
  end

  def valid_coordinate?(coordinate)
    if @cells[coordinate].empty?
      true
    else 
      false
    end
  end

  def snake_render
    food_drop
    @cells[@snake.head_coord].render('head')
    @snake.body_coords.each {|x| @cells[x].render('body')}
  end

  def food_drop
    return false if @cells.values.any?{|x| x.appearance.include?("+")}
    loop do
      random = @cells.keys.sample
      if valid_coordinate?(random)
        @cells[random].render('food')
        @food_coord = random
        break
      end
    end

  end

  def render
    snake_render
    @cells.values.map(&:appearance).each_slice(@column){|x| puts "#{x.join(' ')}\n"}
  end

  def game_over?
    @cells.values.all?(&:full) ? true : false
  end
end