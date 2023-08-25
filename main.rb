require_relative 'player'
require_relative 'math_question'
require_relative 'game'

# Get player names from user input
puts "Enter Player 1's name:"
player1_name = gets.chomp

puts "Enter Player 2's name:"
player2_name = gets.chomp

# Debugging: Display entered player names
puts "DEBUG: Player 1 name: #{player1_name}"
puts "DEBUG: Player 2 name: #{player2_name}"

# Create a new game
game = Game.new([player1_name, player2_name])

# Debugging: Display game initialization
puts "DEBUG: Game initialized with players: #{@players}"

# Start the game
game.start

# Debugging: Display game outcome
puts "DEBUG: Game outcome - #{@players}"

# Announce the winner
game.announce_winner
puts "---- GAME OVER ----"
puts "Good bye!"
