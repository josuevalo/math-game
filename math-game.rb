class MathGame
  attr_accessor :ready

  def initialize
    puts "Welcome to the Math-Game! This is designed to test your wits! Each player will take turns answering math questions. First one to lose all three lives, loses! Ready?"
    
    print "> "
    ready = gets.chomp
    
    if ready.include? "ye"
    @ready = true
    else
    @ready = false
  end
end
  
@is_alive = true

  def start
  puts "HELLLOOOOOOO!!"
  end
end
