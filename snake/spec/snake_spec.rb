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
      expect(@snake.head_coord).to eq('12')
    end

    it 'can store body coords in an array' do
      expect(@snake.body_coords).to eq(['11'])
    end

    it 'starts with no food' do
      expect(@snake.food_count).to eq(0)
    end
  end

  describe 'methods body and new_head' do
    it 'starts with one body' do
      expect(@snake.body).to eq(['12'])
    end

    it 'can have new head coord' do
      @snake.new_head('13')
      expect(@snake.head_coord).to eq('13')
      expect(@snake.body_coords).to eq(['12'])
    end
  end

end