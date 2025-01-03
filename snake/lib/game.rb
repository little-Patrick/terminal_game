

class Game 
  attr_reader :board

  def initialize()
    @board = nil
  end

  def board_size
    puts 'How many rows would you like?'
    row = gets.chomp.to_i
    puts 'how many column would you like?'
    column = gets.chomp.to_i
    @board = Board.new(row, column)
  end

  
end