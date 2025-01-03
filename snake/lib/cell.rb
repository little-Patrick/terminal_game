

class Cell
  attr_reader :appearance,
              :empty,
              :coordinate,
              :full

  def initialize(coordinate)
    @coordinate = coordinate
    @appearance = ' '
    @empty = true
    @full = false
  end

  def empty?
    @empty
  end

  def full?
    @full
  end
  
  def render(type)
    if type == 'body'
      @full = true
      @empty = false
      @appearance = '*'
    elsif type == 'food'
      @empty = false
      @appearance = '+'
    elsif type == 'head'
      @full = true
      @empty = false
      @appearance = '@'
    else
      @appearance
    end
  end

end
