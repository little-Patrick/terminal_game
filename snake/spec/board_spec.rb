require './snake/spec/spec_helper.rb'


RSpec.describe Board do
  before(:each) do 
    @board = Board.new(4, 4)
  end
  describe 'initialize' do 
    it 'exists' do 
      expect(@board).to be_an_instance_of(Board)
    end

    it 'has cells' do
      expect(@board.cells.count).to eq(16)
    end
  end

  describe "valid_coordinate?" do
    it 'has valid coord when empty' do
      expect(@board.valid_coordinate?('11')).to eq(true)
    end

    it 'when not empty invalid coord' do
      @board.cells["11"].render('head')
      expect(@board.valid_coordinate?('11')).to eq(false)
    end
  end

  describe "snake" do
    it 'can add snake ' do
      @board.snake
      @board.food_drop
      @board.render
      @board.game_over?
      
    end
  end
end