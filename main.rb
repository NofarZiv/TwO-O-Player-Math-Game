require './question'
require './game'
require './player'

player1 = Player.new
player2 = Player.new
players = [player1, player2]

game = Game.new
game.start(players)
