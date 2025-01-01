require './tic_tac_toe/spec/spec_helper.rb'


RSpec.describe Turn do
  before(:each) do
  end

  describe 'initialize' do
    it 'counts the number of turns' do
      @turn_1 = Turn.new
      @turn_2 = Turn.new
      expect(Turn.count).to eq(2)
    end

    it 'exists' do
      @turn_1 = Turn.new
      @turn_2 = Turn.new
      expect(@turn_1).to be_an_instance_of(Turn)
      expect(@turn_2).to be_an_instance_of(Turn)
    end

    it 'counts the player' do
      @turn_1 = Turn.new
      @turn_2 = Turn.new
      expect(@turn_2.current_player).to eq(2)
    end
  end
end