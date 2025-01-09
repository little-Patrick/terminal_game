def move
  case @direction 
  when @direction = "UP" unless @direction == "DOWN"
  when @direction = "DOWN" unless @direction == "UP"
  when @direction = "RIGHT" unless @direction == "LEFT"
  when @direction = "LEFT" unless @direction == "RIGHT"
  end
end