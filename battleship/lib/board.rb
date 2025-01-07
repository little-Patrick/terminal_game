

class Board
  attr_reader :cells, 
              :valid_coordinate,
              :valid_placement

  def initialize
    @cells = {
          "A1" => Cell.new('A1'),
          "A2" => Cell.new('A2'),
          "A3" => Cell.new('A3'),
          "A4" => Cell.new('A4'),
          "B1" => Cell.new('B1'), 
          "B2" => Cell.new('B2'), 
          "B3" => Cell.new('B3'), 
          "B4" => Cell.new('B4'), 
          "C1" => Cell.new('C1'), 
          "C2" => Cell.new('C2'), 
          "C3" => Cell.new('C3'), 
          "C4" => Cell.new('C4'), 
          "D1" => Cell.new('D1'), 
          "D2" => Cell.new('D2'), 
          "D3" => Cell.new('D3'), 
          "D4" => Cell.new('D4')
          }
    @valid_coordinate = false
    @valid_placement = false
  end

  def valid_coordinate?(coordinate)
    if @cells.include?(coordinate) == true
      @valid_coordinate = true
    else
      @valid_coordinate = false
    end
  end

  def valid_placement?(ship, coordinates)
    # ship.length == coordinate.count ? c_and_l = true : c_and_l = false
    return false if ship.length != coordinates.count || coordinates.any? { |coordinate| cells[coordinate].empty? == false}
    #letter
    row = coordinates.map do |letter| 
      letter.slice(0, 1)
    end
    # #number
    column  = coordinates.map do |num| 
      num.slice(1, 1).to_i
    end
    
    # valid_placement = []

    if row.uniq.length == 1
      column.each_cons(2).all? do |a, b| 
        @valid_placement = true if (b - a == 1)
      end
      # column.each_cons(2) do |a, b| 
      #   valid_placement << (b - a == 1)
      # end
    elsif column.uniq.length == 1
      row.each_cons(2).all? do |a, b| 
        @valid_placement = true if (b.ord - a.ord == 1)
        end
      # row.each_cons(2) do |a, b| 

      #   valid_placement << (b.ord - a.ord == 1)
        
      # end
    else
      return @valid_placement = false
    end
    # valid_placement.all?{|b| b == true}
  end

  def place(ship, coordinates)
    if valid_placement?(ship, coordinates) == true
      coordinates.each do |coordinate|
        cells[coordinate].place_ship(ship)
      end
    end
  end

  def render(show = false)
    rendered_cells = ""
    @cells.each do |coordinate, cell|
      rendered_cells << " #{cell.render(show)}"
    end

    bunches =rendered_cells.chars.each_slice(8).map(&:join)

"  1 2 3 4 \nA#{bunches[0]} \nB#{bunches[1]} \nC#{bunches[2]} \nD#{bunches[3]} \n"
  end

end

  

    #   row_ordered = row == row.sort
    # binding.pry
    #   if row.all? do |letter|
    #       row[0] == letter
    #     end
    #   binding.pry
    #     column_ordered = column == column.sort.each_cons(2) {|a, b| return false if b - a != 1}
    #   end
    # row_same = row.uniq.length == 1
    # column_same = column.uniq.length == 1

    
    
    # if row_same == true || column_same == true
    #   diagonal = false
    # else 
    #   diagonal = true
    # end

    #   if c_and_l == true && row_ordered == true && column_ordered == true && diagonal == false
    #     @valid_placement = true
    #   else
    #     @valid_placement = false
    #   end
      
    #   @valid_placement  
    #   # binding.pry

# array to be in order
# confirms array has the same value

## Split string into row and column
  # iterate over row to see if letters are the same
  # see if numbers are in order
  # it is a valid placement
  # elsif the column numbers are the same
  # see if the letters are in order
  # the ship placement is valid
  # else valid placement is false

      # cells_to_render = cells.to_a

    # rendered_cells = cells_to_render.map do |cell|
    #   binding.pry
    #   cells[cell].render
    # end

    # split_cells = rendered_cells.each_slice(4).to_a

    # "  1 2 3 4 \nA #{split_cells[0]} \nB #{split_cells[1]} \nC #{split_cells[2]} \nD #{split_cells[3]}\n"