

class Game 
  attr_reader :board,
              :first,
              :second,
              :winner

  def initialize()
    @board = Board.new
    @first = ()
    @second = ()
    @winner = ()
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
      @second = 2
    else 
      @first = 2
      @second = 1
    end
    until end_game?
      @board.render
      @board.turn(@first)
      @board.turn(@second) unless end_game?
    end
    game_conclusion
  end

  def end_game?
    if @board.full? && !winner?
      puts 'Cats Game'
      true
    elsif winner? == 1
      puts 'You Win!!!!!!'
      true
    elsif winner == 2
      puts 'You Lose :('
      true
    else
      false
    end
  end

  def winner?
    winning_combo = [
      %w[t1 t2 t3], %w[m1 m2 m3], %w[b1 b2 b3],
      %w[t1 m1 b1], %w[t2 m2 b2], %w[t3 m3 b3],
      %w[t1 m2 b3], %w[t3 m2 b1] 
    ]
    winner_1 = winning_combo.map {|x| x.all?{|y| @board.cells[y].player.include?('X')}}.include?(true)
    winner_2 =winning_combo.map {|x| x.all?{|y| @board.cells[y].player.include?('O')}}.include?(true)
    if winner_1 == true
      @winner = 1
      return true
    elsif winner_2 == true
      @winner = 2
      return true
    else
      return false
    end

  end
end

