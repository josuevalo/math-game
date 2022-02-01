class MathGame
  attr_accessor :ready, :is_alive, :player1, :player2, :current_player, :num_questions

  def initialize
    @is_alive = true

    puts "Welcome to the Math-Game! This is designed to test your wits! First one to lose all three lives, loses! Ready?"
    
    print "> "
    ready = gets.chomp
    
    if ready.include? "ye"
    @ready = true
    else
    @ready = false
  end
end
  

  def start
    puts "-------- NEW GAME -------- \n"
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    @num_questions = 0
  end

  def total_question
    @num_questions += 1
  end

  def new_turn
    if @current_player == @player1
    total_question
    end
    if @current_player.num_lives == 0 
      @is_alive = false
      opponent = @current_player == @player1 ? @player2 : @player1
      puts "#{@current_player.player_num} you lose! \n #{opponent.player_num} wins with the score #{opponent.score}/#{@num_questions}"
      puts "-------- GAME OVER -------- \n Good Bye!"
    else
      @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
      puts "Score: P1: #{player1.score}/#{@num_questions} vs P2: #{player2.score}/#{@num_questions}"
      
        puts "-------- NEW TURN --------\n"
    end
  end

  def game_loop
    while @is_alive
      question = Question.new
      player = @current_player
      player_num = @current_player.player_num
      puts "#{player_num}: #{question.question}\n"
      player_answer = gets.chomp.to_i
      if player_answer == question.answer
        puts "#{player_num}: You are correct!\n"
        player.add_score
      else 
        puts "#{player_num}: Wrong!! =( You lose a life\n"
        player.remove_life
        puts "lives remaining: #{player.num_lives}"
      end
    
        new_turn
    
    end
  end

end
