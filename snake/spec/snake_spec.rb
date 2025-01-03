require './snake/spec/spec_helper.rb'


RSpec.describe Snake do
  before(:each) do
    @snake = Snake.new
  end

  describe 'initialize' do
    it 'exists' do
      expect(@snake).to be_an_instance_of(Snake)
    end

    it 'has body parts' do
      expect(@snake.head).to eq('head')
      expect(@snake.body).to eq('body')
    end
  end

  describe 'eating' do
    it 'starts with 0' do
      expect(@snake.food_count).to eq(0)
    end

    it 'can eat' do
      @snake.eat
      @snake.eat
      expect(@snake.food_count).to eq(2)
    end
  end
end