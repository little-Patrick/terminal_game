require './tic_tac_toe/spec/spec_helper.rb'


RSpec.describe Game do
  before(:each) do
    @game = Game.new
  end

  describe 'initialize' do
    it 'exists' do
      expect(@game).to be_an_instance_of(Game)
    end

    it 'has a board' do
      expect(@game.board.render).to eq("   |   |   \n-----------\n   |   |   \n-----------\n   |   |   ")
    end
  end

  describe 'methods' do
    it 'has current player turn' do

    end
  end

end