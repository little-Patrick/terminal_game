

class Game 
  attr_reader :board,
              :direction,
              :head_coord,
              :game_over

  def initialize()
    @board = ()
    @direction = 'RIGHT'
    @head_coord = 'a1'
    @game_over = false
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

  def score
    @board.snake.food_count
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
    binding.pry
    system("clear")
    @board.cells[@head_coord].render('head')
    @board.render
  end

  def start_game
    binding.pry
    case @direction
    when 'UP'
      @head_coord = (@head_coord.split('')[0].ord - 1).chr
      @body << @head_coordinate
      @body.pop
    when 'DOWN'
      @head_coord = (@head_coord.split('')[0].ord + 1).chr
      @body << @head_coordinate
      @body.pop
    when 'LEFT'
      @head_coord = @head_coordinate.split('')[1] - 1
      @body << @head_coordinate
      @body.pop
    when 'RIGHT' 
      @head_coord = @head_coordinate.split('')[1] + 1
      @body << @head_coordinate
      @body.pop
    end

    if @head_coord == @food_coord
      @board.food_drop
      @board.snake.eat
      return @head_coord
    elsif @body.include?(@head_coord)
      @game_over = true
    else 
       return @head_coord
    end
  end

  def game_over?
    if game_over == true
      true
    elsif @board.full?
      true
    else
      false
    end
  end
end

