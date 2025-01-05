require './snake/spec/spec_helper.rb'


RSpec.describe Snake do
  before(:each) do
    @snake = Snake.new
  end

  describe 'initialize' do
    it 'exits' do
      expect(@snake).to be_an_instance_of(Snake)
    end

    it 'has starting head coordinate' do
      expect(@snake.head_coord).to eq('11')
    end

    it 'can store body coords in an array' do
      expect(@snake.body_coords).to eq([])
    end

    it 'starts with no food' do
      expect(@snake.food_count).to eq(0)
    end
  end

end