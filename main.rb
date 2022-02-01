require './player.rb'
require './question.rb'
require './math-game.rb'

game = MathGame.new

if game.ready 
  game.start
  game.game_loop
else
  puts "Please try again"
end


