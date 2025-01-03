

class Cell
  attr_reader :appearance,
              :empty

  def initialize()
    @appearance = ' '
    @empty = true
  end

  def empty?
    @empty
  end

  def render(type)
    if type == 'snake'
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
