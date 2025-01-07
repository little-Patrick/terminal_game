require './snake/spec/spec_helper.rb'


RSpec.describe Cell do
  before(:each) do 
    @cell_1 = Cell.new('11')
    @cell_2 = Cell.new('12')
    @cell_3 = Cell.new('13')
    @cell_4 = Cell.new('21')
  end
  describe 'initialize' do
    it 'exists' do
      expect(@cell_1).to be_an_instance_of(Cell)
      expect(@cell_4).to be_an_instance_of(Cell)
    end

    it 'has row' do
      expect(@cell_2.row).to eq('1')
    end

    it 'has column' do
      expect(@cell_3.column).to eq('3')
    end

    it 'is empty to start' do
      expect(@cell_1.empty?).to eq(true)
    end

    it 'is not full' do
      expect(@cell_1.full?).to eq(false)
    end
  end

  describe 'render' do
    it 'renders head' do
      @cell_1.render('head')
      expect(@cell_1.appearance).to eq('@')
      expect(@cell_1.full?).to eq(true)
    end

    it 'renders body' do
      @cell_2.render('body')
      expect(@cell_2.appearance).to eq('*')
      expect(@cell_2.empty?).to eq(false)
    end
    
    it 'renders food' do
      @cell_3.render('food')
      expect(@cell_3.appearance).to eq('+')
    end
    
    it 'renders a space' do
      expect(@cell_4.appearance).to eq(' ')
      @cell_4.render
      expect(@cell_4.appearance).to eq(' ')
    end
  end
end