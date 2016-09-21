class Sticks
  attr_accessor :sticks_remaining, :current_player
  def initialize
    @sticks_remaining = sticks_remaining
    @current_player = current_player
  end
end

def take_sticks(current_player)
  puts "It is #{current_player}'s turn."
  puts "There are #{@sticks_remaining} sticks on the board."
  puts "How many sticks will you take? (1-3)"
  sticks_taken = gets.chomp.to_i
  if sticks_taken >= 1 && sticks_taken <=3
    @sticks_remaining -= sticks_taken
  else
    puts "That is an invalid input."
    take_sticks
  end
end

def player_win?(current_player)
  if @sticks_remaining == 1
    puts "#{current_player} wins."
  end
end

def switch_player(current_player)
  if current_player == "Player 1"
    @current_player = "Player 2"
  else
    @current_player = "Player 1"
  end
end

def main
  puts "Welcome to the Game of Sticks!"
  puts "How many sticks would you like to begin with? (Between 10-100)"
  @sticks_remaining = gets.chomp.to_i
  until @sticks_remaining <= 1
    switch_player(@current_player)
    take_sticks(@current_player)
    player_win?(@current_player)
  end
end

if
  __FILE__ == $PROGRAM_NAME
  main
end
