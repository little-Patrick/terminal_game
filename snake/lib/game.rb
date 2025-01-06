

class Game
  attr_reader :board

  def initialize()
    @board = nil
    @direction = 'Right'
  end

  def play
    puts "----------Welcome to Snake----------"
    setup
    loop do
      move_snake
      game_over?
    end
  end

  def setup
    puts 'How many rows?' 
    row = gets.chomp
    puts 'How many columns?'
    column = gets.chomp
    @board = Board.new(row, column)
  end

  def move_snake
    binding.pry
    loop do
      input = STDIN.getch
      case input
      when "w" @direction = 'Up' unless @direction == "Down"
        row, column = @board.snake.head_coord.chars
        new_row = (row.to_i - 1).to_s 
        new_coord = "#{new_row}#{column}"
        @board.snake.new_head(new_coord)  
      when "s" @direction = 'Down' unless @direction == "Up"
        row, column = @board.snake.head_coord.chars
        new_row = (row.to_i + 1).to_s 
        new_coord = "#{new_row}#{column}"
        @board.snake.new_head(new_coord)
      when "a" @direction = 'Left' unless @direction == "Right"
        row, column = @board.snake.head_coord.chars
        new_column = (column.to_i - 1).to_s 
        new_coord = "#{row}#{new_column}"
        @board.snake.new_head(new_coord)  
      when "d" @direction = 'Right' unless @direction == 'Left'
        row, column = @board.snake.head_coord.chars
        new_column = (column.to_i + 1).to_s 
        new_coord = "#{row}#{new_column}"
        @board.snake.new_head(new_coord)  
      end
    end
  end

  def game_over?
    @board.game_over?
  end
  
end