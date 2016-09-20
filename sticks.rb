class Sticks
  attr_accessor :sticks_remaining
  def initialize
    @sticks_remaining = sticks_remaining
  end
end

def take_sticks
  puts "How many sticks will you take? (1-3)"
  sticks_taken = gets.chomp.to_i
  if sticks_taken >= 1 && sticks_taken <=3
    @sticks_remaining = @sticks_remaining - sticks_taken
  else
    puts "That is an invalid input."
  end
end

def main
  puts "Welcome to the Game of Sticks!"
  puts "How many sticks would you like to begin with? (Between 10-100)"
  @sticks_remaining = gets.chomp.to_i

  until @sticks_remaining <= 0
    puts "There are #{@sticks_remaining} sticks on the board."
    take_sticks
  end
  "Game over."
end

if
  __FILE__ == $PROGRAM_NAME
  main
end
