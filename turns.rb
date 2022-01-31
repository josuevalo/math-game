class Turn
  attr_accessor :player_turn
  def initialize
    @player_turn = 1
  end

end

def new_turn
  if @player_turn == 1
  @player_turn = 2
  elsif @player_turn == 2
    @player_turn = 1
  end
  puts "-------- NEW TURN --------"
end

end