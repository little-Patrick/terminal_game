

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
    @cells.include?(coordinate) && @cells[coordinate].empty? == true ? true : false
  end

  def place(player, coordinate)

  def render
    
  end
end