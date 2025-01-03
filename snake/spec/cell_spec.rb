require './snake/spec/spec_helper.rb'


RSpec.describe Cell do
  before(:each) do
    @cell_1 = Cell.new
    @cell_2 = Cell.new
    @cell_3 = Cell.new

  end
  
  describe 'initialize' do
    it 'exists' do
      expect(@cell_1).to be_an_instance_of(Cell)
    end

    it 'starts as a space' do
      expect(@cell_1.appearance).to eq(' ')
    end

    it 'can change its appearance' do
      @cell_1.render("snake")
      @cell_2.render("food")
      @cell_3.render('head')

      expect(@cell_1.appearance).to eq('*')
      expect(@cell_2.appearance).to eq('+')
      expect(@cell_3.appearance).to eq('@')
    end
  end
end