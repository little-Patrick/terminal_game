require './snake/spec/spec_helper.rb'


RSpec.describe Game do
  before(:each) do
    @game = Game.new

  end

  describe 'initialize' do
    it 'exists' do
      expect(@game).to be_an_instance_of(Game)
    end

    it 'can create a board size' do
      @game = Game.new
      @board = Board.new(3, 3)
      @game.board_size
      @game.start_game
    end
  end
end