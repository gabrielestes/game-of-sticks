#Game of Sticks

===

##Synopsis

####Game of Sticks is a basic game program. The user chooses how many sticks start on the table. The other player, either a human or AI, is their opponent. Each player takes turns removing 1-3 sticks (their choice) every turn. A player wins when their opponent is left with one stick at the start of their turn.


##PVP

####The file titled 'sticks.rb' is the player vs. player mode. Two people switch turns taking sticks, being prompted with the current player's turn.


##Player vs. AI

####The file titled 'sticks_ai.rb' is the player vs. AI mode. Although in the works, as turns occur, the AI stores its decisions in an empty array. After the game ends, the program manipulates its array of options based on if it won or loss. To summarize, the program improves the statistics for the AI to choose a number that was favorable in the past.


##System Requirements

####Must have Ruby 2.3.0
####To install Ruby, follow the instructions here:
>https://www.ruby-lang.org/en/downloads/


##How to Run the program

####Begin by clicking the clone button on the top right of GitHub. From the Terminal, ensure that the present working directory is the file's parent directory. Follow each program's prompts to play the game.

####In Terminal, type the following for PvP:
```
$ ruby sticks.rb
```

####Type the following for PvAI:
```
$ ruby sticks_ai.rb
```


##Language
####Written in Ruby

##Author
####Gabriel Estes
