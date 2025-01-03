

class Cell
  attr_reader :appearance,
              :empty,
              :coordinate

  def initialize(coordinate)
    @coordinate = coordinate
    @appearance = ' '
    @empty = true
  end

  def empty?
    @empty
  end

  def render(type)
    if type == 'body'
      @appearance = '*'
    elsif type == 'food'
      @appearance = '+'
    elsif type == 'head'
      @appearance = '@'
    else
      @appearance
    end
  end
end
