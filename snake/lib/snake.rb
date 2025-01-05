

class Snake
  attr_reader :head_coord,
              :body_coords,
              :food_count

  def initialize()
    @head_coord = '12'
    @body_coords = ['11']
    @food_count = 0
  end

  def new_head(coordinate)
    body
    @head_coord = coordinate
  end

  def body
    @body_coords.pop
    @body_coords << @head_coord
  end

  def eat
    @food_count += 1
    @body_coords.append(@body_coords.last)
  end
end