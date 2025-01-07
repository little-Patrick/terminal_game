

class Game 
  attr_reader :board,
              :first,
              :second,
              :winner

  def initialize()
    @board = Board.new
    @first = nil
    @second = nil
    @winner = nil
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
        puts 'Wimp!'
        break
      else 
        puts "Invalid input.\nPlease select 'p' to play or 'q' to quit"
      end
    end
  end

  def play_game 
    setup
    until end_game?
      puts @board.render
      @board.turn(@first)
      break if end_game?
      puts @board.render
      @board.turn(@second) unless end_game?
    end
    puts @board.render
    game_conclusion
  end

    def end_game?
      return true if @board.full? || winner?
    
      false
    end


  def winner?
    winning_combo = [
      %w[t1 t2 t3], %w[m1 m2 m3], %w[b1 b2 b3],
      %w[t1 m1 b1], %w[t2 m2 b2], %w[t3 m3 b3],
      %w[t1 m2 b3], %w[t3 m2 b1] 
    ]
    winning_combo.each do |combo|
      if combo.all? { |cell| @board.cells[cell].player == 'X' }
        @winner = 1
        return true
      elsif combo.all? { |cell| @board.cells[cell].player == 'O' }
        @winner = 2
        return true
      end
    end
    false
  end

  def setup
    first_player = rand(2)
    if first_player == 1
      @first = 1
      @second = 2
    else
      @first = 2
      @second = 1
    end
  end

  def game_conclusion
    if @winner == 1
      puts "You Win!!!"
    elsif @winner == 2
      puts "You Lose :("
    else
      puts "It's a draw!"
    end
  end
end

