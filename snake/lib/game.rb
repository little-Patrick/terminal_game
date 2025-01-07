

class Game
  attr_reader :board

  def initialize()
    @board = nil
    @direction = 'Right'
  end

  def start
    puts 'Welcome to Snake'
    loop do
      puts 'Enter p to play. Enter q to quit.'
      input = gets.chomp.downcase
      case input
      when 'p'
        setup
        run
      when 'q'
        puts 'Goodbye!'
        break
      else
        puts 'Invalid input, please try again...'
      end
    end
  end

  def run
    system('clear')
    draw
    Thread.new {capture_input}
    until game_over?
      move_snake
      draw
      sleep 0.2
    end
  end

  def setup
    puts 'How many rows?' 
    row = gets.chomp.to_i
    puts 'How many columns?'
    column = gets.chomp.to_i
    @board = Board.new(row, column)
  end

  def move_snake
    case @direction
    when 'Up' 
      row, column = @board.snake.head_coord.chars
      new_row = (row.to_i - 1).to_s 
      new_coord = "#{new_row}#{column}"
      @board.snake.new_head(new_coord)  
    when 'Down'
      row, column = @board.snake.head_coord.chars
      new_row = (row.to_i + 1).to_s 
      new_coord = "#{new_row}#{column}"
      @board.snake.new_head(new_coord)
    when 'Left'
      row, column = @board.snake.head_coord.chars
      new_column = (column.to_i - 1).to_s 
      new_coord = "#{row}#{new_column}"
      @board.snake.new_head(new_coord)  
    when 'Right'
      row, column = @board.snake.head_coord.chars
      new_column = (column.to_i + 1).to_s 
      new_coord = "#{row}#{new_column}"
      @board.snake.new_head(new_coord)  
    end
  end

  def capture_input
    loop do
      case STDIN.getch
      when 'w' then @direction = 'UP' unless @direction == 'DOWN'
      when 's' then @direction = 'DOWN' unless @direction == 'UP'
      when 'a' then @direction = 'LEFT' unless @direction == 'RIGHT'
      when 'd' then @direction = 'RIGHT' unless @direction == 'LEFT'
      end
    end
  end

  def game_over?
    if @board.game_over?
      true
    elsif @board.snake.body_coords.include?(@board.snake.head_coord)
      true
    else 
      false
    end
  end


  def draw
    system('clear')
    @board.render
  end

end