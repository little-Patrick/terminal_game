require './snake/spec/spec_helper.rb'


RSpec.describe Board do
  before(:each) do
    @board = Board.new(3, 3)
  end

  describe 'initialize' do
    it 'exists' do
      expect(@board).to be_an_instance_of(Board)
    end

    it 'has cells' do
      expect(@board.cells.count).to eq(9)
    end
  end
end