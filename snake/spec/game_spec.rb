require './snake/spec/spec_helper.rb'


RSpec.describe Game do
  before(:each) do
    @game = Game.new
    @board = Board.new(4, 4)
  end

  describe 'initialize' do
    it 'exists' do
      expect(@game).to be_an_instance_of(Game)
    end

    it 'something' do
      @game.snake_collision
      @game.move_snake

    end
  end
end