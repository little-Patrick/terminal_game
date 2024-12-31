

class Cell 
  attr_reader :empty,
              :player_x,
              :player_o,
              :coordinate

  def initialize(coordinate)
    @coordinate = coordinate
    @player_x = 'X'
    @player_o = 'O'
    @empty = true
  end

  def empty?
    @empty
  end

  def render(player = ' ')
    if player == 1 
      @empty = false
      @player_x
    elsif player == 2
      @empty = false
      @player_o
    else
      player
    end
  end
end