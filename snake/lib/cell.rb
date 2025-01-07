

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
    @appearance = '.'
  end

  def empty?
    @empty
  end

  def full?
    @full
  end

  def render(part = '.')
    if part == 'head'
      @empty = false
      @full = true
      @appearance = '@'
    elsif part == 'body'
      @empty = false
      @full = true
      @appearance = '*'
    elsif part == 'food'
      @empty = false
      @full = false
      @appearance = '+'
    else 
      @appearance = part
      @empty = true
      @full = false
    end
  end

end