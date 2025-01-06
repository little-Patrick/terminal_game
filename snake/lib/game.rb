

class Game
  attr_reader :board

  def initialize()
    @board = nil
  end

  def play
    puts "----------Welcome to Snake----------"
    loop do
      setup
    
    end
  end

  def setup
    puts 'How many rows?' 
    row = gets.chomp
    puts 'How many columns?'
    column = gets.chomp
    @board = Board.new(row, column)
  end

  
              
end