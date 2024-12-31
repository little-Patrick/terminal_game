

class Cell 
  attr_reader :empty,
              :player_x1,
              :player_o2,
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
      @render = @player_x
    elsif player == 2
      @empty = false
      @render = @player_o
    else
      @render = player
    end
  end
end