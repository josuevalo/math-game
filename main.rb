require './players.rb'
require './questions.rb'
require './turns.rb'
require './math-game.rb'

game = MathGame.new

if game.ready 
  game.start
else
  puts "Please try again"
end

while game.is_alive
  Question.new
  # Whose turn it is
  # Ask a question to the player
  # get and check the answer
  # if right, record score
  # if wrong, record score and minus a life
  # check how many life that player now has. If 0 game over
end