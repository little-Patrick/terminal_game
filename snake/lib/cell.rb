

class Cell
  attr_reader :appearance,
              :empty,
              :coordinate,
              :full,
              :row,
              :column

  def initialize(coordinate)
    @coordinate = coordinate
    @appearance = ' '
    @empty = true
    @full = false
    @row = coordinate.split('')[0]
    @column = coordinate.split('')[1]
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
