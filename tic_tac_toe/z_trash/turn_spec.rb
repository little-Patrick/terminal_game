require './tic_tac_toe/spec/spec_helper.rb'


RSpec.describe Turn do
  before(:each) do
    @board = Board.new
  end

  describe 'initialize' do
    it 'counts the number of turns' do
      @turn_1 = Turn.new(1)
      @turn_2 = Turn.new(2)
      expect(Turn.count).to eq(2)
    end

    it 'exists' do
      @turn_1 = Turn.new(2)
      @turn_2 = Turn.new(1)
      expect(@turn_1).to be_an_instance_of(Turn)
      expect(@turn_2).to be_an_instance_of(Turn)
    end
  end
end