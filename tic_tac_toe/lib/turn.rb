

class Turn 
  @@count = 0
  attr_reader :count
  

  def initialize()
    @@count += 1

  end

  def Turn.count
    @@count
  end

  def current_player
    @@count.odd? ? 1 : 2
  end

end