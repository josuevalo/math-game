def main_room
puts "Welcome to the Math-Game! This is designed to test your wits! Each player will take turns answering math questions. First one to lose all three lives, loses! Ready?"

print "> "
ready = gets.chomp

if ready.include? "ye"
  start
else
  puts "Please try again"
end
end

def start

end

