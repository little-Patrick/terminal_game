

class Game 
  attr_reader :board,
              :direction,
              :head_coord



  def initialize()
    @board = nil
    @direction = 'RIGHT'
    @head_coord = 'a1'
  end

  def start
    puts 'Welcome to Snake'
    loop do
      puts 'Enter p to play.n/Enter q to quit.'
      input = gets.chomp.downcase
      case input
      when 'p'
        board_size
        run
      when 'q'
        puts "Wimp!"
        break
      else
        'Invalid input, please try again...'
      end
    end
  end

  def board_size
    puts 'How many rows would you like?'
    row = gets.chomp.to_i
    puts 'how many column would you like?'
    column = gets.chomp.to_i
    @board = Board.new(row, column)
  end

  def run
    system("clear")
    draw
    Thread.new do
      loop do
        case STDIN.getch
        when 'w'
          @direction = 'UP' unless @direction == 'DOWN'
        when 's'
          @direction = 'DOWN' unless @direction == 'UP'
        when 'a'
          @direction = 'LEFT' unless @direction == 'RIGHT'
        when 'd'
          @direction = 'RIGHT' unless @direction == 'LEFT'
        end
      end
    end
    loop do
      start_game
      draw
      sleep 0.1
    end
  end

  def draw
    system("clear")
    puts @board.render
  end

  def start_game
    case @direction
    when 'UP'
      @head_coord = (@head_coord.split('')[0].ord - 1).chr
    when 'DOWN'
      @head_coord = (@head_coord.split('')[0].ord + 1).chr
    when 'LEFT'
      @head_coord = @head_coordinate.split('')[1] - 1
    when 'RIGHT' 
      @head_coord = @head_coordinate.split('')[1] + 1
    end
  end
end