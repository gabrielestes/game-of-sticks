class Sticks
  attr_accessor :sticks_remaining, :current_player
  def initialize
    @sticks_remaining = sticks_remaining
    @current_player = current_player
    @computer_action = computer_action
    @computer_turn_history = computer_turn_history
    @ai_options = ai_options
  end
end

def take_sticks(current_player)
  if current_player == "Player 1"
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
  else
    computer_takes
    puts "The AI took #{@computer_action} stick(s)."
  end
end

def computer_takes
  rand_computer_hash = @ai_options.sample
  @computer_turn_history << rand_computer_hash
  rand_computer_value = rand_computer_hash.values.flatten.sample
  @computer_action = rand_computer_value
  @computer_turn_history << @computer_action
  @sticks_remaining -= @computer_action
end

# def computer_win?
#   if computer_win == false
#     @ai_options << @computer_action
#   else
#     #take num from array
#
# end

def player_win?(current_player)
  if @sticks_remaining == 1
    puts "#{current_player} wins."
    if current_player == "Player 1"
      computer_lose = true
    else
      computer_lose = false
    end
  end
end

def switch_player(current_player)
  if current_player == "Player 1"
    @current_player = "The computer"
  else
    @current_player = "Player 1"
  end
end

def main
  @ai_options = [
      {1 => [1,2,3]},
      {2 => [1,2,3]},
      {3 => [1,2,3]},
      {4 => [1,2,3]},
      {5 => [1,2,3]},
      {6 => [1,2,3]},
      {7 => [1,2,3]},
      {8 => [1,2,3]},
      {9 => [1,2,3]}
    ]
  @computer_turn_history = []
  puts "Welcome to the Game of Sticks!"
  puts "How many sticks would you like to begin with? (Between 10-100)"
  @sticks_remaining = gets.chomp.to_i
  until @sticks_remaining <= 1
    switch_player(@current_player)
    take_sticks(@current_player)
    player_win?(@current_player)
    puts @computer_turn_history
  end
  # computer_win?
  # puts @ai_options
end

if
  __FILE__ == $PROGRAM_NAME
  main
end
