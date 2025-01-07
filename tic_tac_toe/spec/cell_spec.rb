require './tic_tac_toe/spec/spec_helper.rb'


RSpec.describe Cell do
  before(:each) do
    @cell = Cell.new('t1')
  end

  describe 'initialize' do
    it 'exists' do
      expect(@cell).to be_an_instance_of(Cell)
    end
    
    it 'starts as space' do 
      expect(@cell.render).to eq(' ')
    end

    it 'can change to a x' do
      expect(@cell.render(1)).to eq('X')
    end

    it 'can change to O' do
      expect(@cell.render(2)).to eq('O')
    end
  end

  describe 'methods' do
    it 'is empty to start' do
      expect(@cell.empty?).to eq(true)

      @cell.render(1)

      expect(@cell.empty?).to eq(false)
    end
  end
  
end