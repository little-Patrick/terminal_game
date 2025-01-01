

class Board 
  attr_reader :cells

  def initialize()
    @cells = {
              "t1" => Cell.new('t1'),
              "t2" => Cell.new('t2'),
              "t3" => Cell.new('t3'),
              "m1" => Cell.new('m1'),
              "m2" => Cell.new('m2'),
              "m3" => Cell.new('m3'),
              "b1" => Cell.new('b1'),
              "b2" => Cell.new('b2'),
              "b3" => Cell.new('b3')
    }
    @valid_coordinate = false
  end

  def valid_coordinate?(coordinate)
    @cells.key?(coordinate) && @cells[coordinate].empty?
  end

  def place(player, coordinate)
   if valid_coordinate?(coordinate)
    @cells[coordinate].render(player)
   else
    false
   end
  end

  def render
    render = @cells.values.map(&:player)
    " #{render[0]} | #{render[1]} | #{render[3]} \n-----------\n #{render[4]} | #{render[5]} | #{render[6]} \n-----------\n #{render[6]} | #{render[7]} | #{render[8]} "
  end
  
end