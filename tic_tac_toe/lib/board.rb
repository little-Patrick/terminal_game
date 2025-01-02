

class Board 
  attr_accessor :cells

  def initialize()
    @cells = {
              "t1" => Cell.new('t1'),
              "t2" => Cell.new('t2'),
              "t3" => Cell.new('t3'),
              "m1" => Cell.new('m1'),
              "m2" => Cell.new('m2'),
              "m3" => Cell.new('m3'),
              "b1" => Cell.new('b1'),
              "b2" => Cell.new('b2'),
              "b3" => Cell.new('b3')
    }
    @valid_coordinate = false
  end

  def valid_coordinate?(coordinate)
    @cells.key?(coordinate) && @cells[coordinate].empty?
  end

  def place(player, coordinate)
   if valid_coordinate?(coordinate)
    @cells[coordinate].render(player)
    true
   else
    false
   end
  end

  def render
    render = @cells.values.map(&:player)
    " TicTacToe \n #{render[0]} | #{render[1]} | #{render[2]} \n-----------\n #{render[3]} | #{render[4]} | #{render[5]} \n-----------\n #{render[6]} | #{render[7]} | #{render[8]} "
  end

  def turn(player)
    if player == 1
      loop do
        puts 'Enter Coordinate:'
        coordinate = gets.chomp.downcase
        if valid_coordinate?(coordinate)
          place(1, coordinate)
          return render
        else
          puts "Invalid move. Try again."
        end
      end
    elsif player == 2
      loop do
        random_coord = @cells.keys.sample
        if valid_coordinate?(random_coord)
          place(2, random_coord)
          return render
        end
      end
    else
      false
    end
  end

  def full?
    @cells.values.all?{|cell| !cell.empty? }
  end

end


