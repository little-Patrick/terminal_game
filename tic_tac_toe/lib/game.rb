

class Game 
  attr_reader :board

  def initialize()
    @board = Board.new
    @first = ()
    @second = ()
  end

  def start_game
    loop do
      puts "Welcome to Tic-Tac-Toe"
      puts "Enter p to play. Enter q to quit"
      input = gets.chomp.downcase
      case input
      when 'p'
        play_game
      when 'q'
        put 'Wimp!'
        break
      else 
        puts "Invalid input.\nPlease select 'p' to play or 'q' to quit"
      end
    end
  end

  def play_game 
    random = rand(2)
    if random == 1
      @first = 1
    else 
      @second = 2
    end
    until end_game?
      @board.render
      @board.turn(@first)
      @board.turn(@second) unless end_game?
    end
    game_conclusion
  end

  def end_game?
    if 
  end




end

