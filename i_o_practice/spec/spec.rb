require "./i_o_practice/lib/board.rb"
require "./i_o_practice/lib/cell.rb"
require "./i_o_practice/lib/character.rb"
require "./i_o_practice/lib/game.rb"
require "pry"
require "rspec"
require "io/console"


Rspec.describe Board do
  before(:each) do
    @board = Board.new(20, 20)
  end
end
