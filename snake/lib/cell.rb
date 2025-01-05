

class Cell
  attr_reader :row,
              :column,
              :coordinate,
              :empty,
              :full,
              :appearance

  def initialize(coordinate)
    @coordinate = coordinate
    @row = coordinate.split('')[0]
    @column = coordinate.split('')[1]
    @empty = true
    @full = false
    @appearance = ' '
  end

  def empty?
    @empty
  end

  def full?
    @full
  end

  def render(part = ' ')
    if part == 'head'
      @appearance = '@'
    elsif part == 'body'
      @appearance = '*'
    elsif part == 'food'
      @appearance = '+'
    else 
      @appearance
    end
  end

end