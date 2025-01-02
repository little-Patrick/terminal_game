require './tic_tac_toe/spec/spec_helper.rb'


RSpec.describe Game do
  before(:each) do
    @game = Game.new
  end

  describe 'initialize' do
    it 'exists' do
      expect(@game).to be_an_instance_of(Game)
    end

    it 'has a board' do
      expect(@game.board.render).to eq(" TicTacToe \n   |   |   \n-----------\n   |   |   \n-----------\n   |   |   ")
    end
  end

  describe 'methods' do
    it 'has a winner' do
      expect(@game.winner?).to eq(false)
      @game.board.place(2,'t1')
      @game.board.place(2,'t2')
      @game.board.place(2,'t3')

      expect(@game.winner?).to eq(true)
      expect(@game.winner).to eq(2)
    end

    it 'is thanos' do
      expect(@game.end_game?).to eq(false)

      @game.board.place(2,'t1')
      @game.board.place(2,'t2')
      @game.board.place(2,'t3')

      expect(@game.end_game?).to eq(true)
    end

    it 'choses random to start' do
      expect(@game.setup).to eq(1).or eq(2)
    end
  end

end