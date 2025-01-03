

class Game 
  attr_reader :board

  def initialize()
    @board = nil
  end

  def board_size
    puts 'what board size would you like? (row, column)'
    size = gets.chomp.to_i
    @board = Board.new(size[0], size[1])
    binding.pry
  end
end