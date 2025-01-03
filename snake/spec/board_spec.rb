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

  describe 'render' do
    it 'starts with head' do
      @board.cells['a1'].render('head')
      @board.cells['a2'].render('body')
      @board.cells['b1'].render('body')
      @board.cells['c3'].render('head')
      @board.cells['c1'].render('body')
      @board.cells['b3'].render('body')

      expect(@board.render).to eq(["@", "*", " ", "*", " ", "*", "*", " ", "@"])
    end
  end

  describe 'full' do
    it "isn't full to start" do
      expect(@board.full?).to eq(false)
    end

    it 'is full once full' do
      @board.cells['a1'].render('head')
      @board.cells['a2'].render('body')
      @board.cells['a3'].render('body')
      @board.cells['b1'].render('body')
      @board.cells['b2'].render('body')
      @board.cells['b3'].render('body')
      @board.cells['c1'].render('body')
      @board.cells['c2'].render('body')
      @board.cells['c3'].render('body')

      expect(@board.full?).to eq(true)
    end
  end

  describe 'food drop' do
    it 'drops food' do
      @board.cells['a1'].render('head')
      @board.cells['a2'].render('body')
      @board.cells['a3'].render('body')
      @board.cells['b1'].render('body')
      @board.food_drop
      expect(@board.render.include?("+")).to eq(true)
    end

    it 'can not drop food when food is already on board' do
      @board.food_drop
      expect(@board.food_drop).to eq(false)
    end

    it 'can not drop food when board is full' do
      @board.cells['a1'].render('head')
      @board.cells['a2'].render('body')
      @board.cells['a3'].render('body')
      @board.cells['b1'].render('body')
      @board.cells['b2'].render('body')
      @board.cells['b3'].render('body')
      @board.cells['c1'].render('body')
      @board.cells['c2'].render('body')
      @board.cells['c3'].render('body')


      expect(@board.food_drop).to eq(false)
    end
  end
end