

class Cell 
  attr_reader :empty,
              :player,
              :coordinate

  def initialize(coordinate)
    @coordinate = coordinate
    @player = ' '
    @empty = true
  end

  def empty?
    @empty
  end

  def render(x_or_o = ' ')
    if x_or_o == 1 
      @empty = false
      @player = 'X'
    elsif x_or_o == 2
      @empty = false
      @player = 'O'
    else
     @player
    end
  end
end