require './snake/spec/spec_helper.rb'


RSpec.describe Cell do
  before(:each) do
    @cell_1 = Cell.new('a1')
    @cell_2 = Cell.new('a2')
    @cell_3 = Cell.new('a3')

  end
  
  describe 'initialize' do
    it 'exists' do
      expect(@cell_1).to be_an_instance_of(Cell)
    end

    it 'starts as a space' do
      expect(@cell_1.appearance).to eq(' ')
    end

    it 'can change its appearance' do
      @cell_1.render("body")
      @cell_2.render("food")
      @cell_3.render('head')

      expect(@cell_1.appearance).to eq('*')
      expect(@cell_2.appearance).to eq('+')
      expect(@cell_3.appearance).to eq('@')
    end
  end

  describe 'full?' do
    it 'is not full to start' do 
      expect(@cell_1.full?).to eq(false)
    end

    it 'is full once taken up' do
      @cell_2.render('head')
      expect(@cell_2.full?).to eq(true)
    end
  end
end