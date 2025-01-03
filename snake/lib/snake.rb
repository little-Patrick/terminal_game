

class Snake
  attr_reader :head,
              :body,
              :food_count

  def initialize()
    @head = 'head'
    @body = 'body'
    @food_count = 0
  end

  def eat
    @food_count += 1
  end

end