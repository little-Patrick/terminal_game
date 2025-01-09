

class Character
  attr_reader :coord,
              :direction

  def initialize
    @coord = '11'
    @direction = "RIGHT"
  end

  def move
    row, col = @direction.chars.map(&:to_i)
    new_coord = case @direction 
                when "UP" then "#{row - 1}#{col}"
                when "DOWN" then "#{row + 1}#{col}"
                when "RIGHT" then "#{row}#{col - 1}"
                when "LEFT" then "#{row}#{col + 1}"
                end
  end
end