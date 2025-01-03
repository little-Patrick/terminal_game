require './snake/spec/spec_helper.rb'

game = Game.new
game.board_size
game.board.cells['a1'].render('head')
game.board.food_drop
game.board.render