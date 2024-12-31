require './tic_tac_toe/spec/spec_helper.rb'


RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end

  describe 'initialize' do
    it 'exists' do
      expect(@board).to be_an_instance_of(Board)
    end

    it 'has cells' do
      expect(@board.cells.count).to eq(9)
    end
  end

  describe 'valid coordinate' do
    it 'can validate the coordinate' do
      expect(@board.valid_coordinate?('t1')).to eq(true)
    end

    it 'can not take an non-empty space' do
      @board.cells['t1'].render(1)
      expect(@board.valid_coordinate?('t1')).to eq(false)
    end
  end

  describe 'render and then place' do
    it 'can render new moves' do
      expect(@board.render).to eq("   |   |   \n-----------\n   |   |   \n-----------\n   |   |   ")

      @board.place(@player_x, 't1')

      expect(@board.render).to eq(" x |   |   \n-----------\n   |   |   \n-----------\n   |   |   ")
    end
  end
end