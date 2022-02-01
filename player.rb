class Player
  attr_accessor :num_lives, :score, :player_num

  def initialize(player)
    @num_lives = 3
    @score = 0
    @player_num = player

  end

def remove_life
  @num_lives -= 1
end

def add_score
  @score += 1
end

end