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
    
    xit 'sets up board' do 
      expect(@board.render).to be('  |   |   /n-----------/n  |   |   /n-----------/n  |   |   ')
    end

  end
end