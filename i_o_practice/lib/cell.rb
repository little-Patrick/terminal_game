

class Cell
  attr_reader :

  def initialize(coordinate)
    @coordinate = coordinate
    @row = coordinate.split('')[0]
    @column = coordinate.split('')[1]
    @empty = true
    @appearance = ' '
  end

  def empty?
    @empty
  end
end