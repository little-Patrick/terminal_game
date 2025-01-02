

class Turn 
  @@count = 0

  attr_reader :count, :player
  
  def initialize(player)
    @@count += 1
    @player = player
  end

  def Turn.count
    @@count
  end

end