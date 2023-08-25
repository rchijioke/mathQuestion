class Game
  def initialize(player_names)
    @players = []
    player_names.each do |name|
      @players << Player.new(name)
    end
    @current_player_index = 0
  end

  def start
    while !game_over?
      current_player = @players[@current_player_index]
      next_player = @players[1 - @current_player_index]  # Switch players
  
      math_question = MathQuestion.new
      math_question.ask_question(current_player)
  
      # Get player's answer and update game state
      player_answer = gets.chomp.to_i
      math_question.check_answer(current_player, player_answer)
  
      # Switch current player
      @current_player_index = 1 - @current_player_index
  
      # Check if the current player has lost all lives
      if current_player.lives <= 0
        puts "#{current_player.name} loses all lives. #{next_player.name} wins!"
        break  # End the game loop
      end
  
      puts "#{current_player.name}: #{current_player.lives}/3 vs #{next_player.name} #{next_player.lives}/3"
      puts "---- NEW TURN ----"
    end
  end

  def game_over?
    @players.any? { |player| player.lives <= 0 }
  end

  def announce_winner
    winner = @players.max_by(&:score)
    puts "#{winner.name} wins with a score of #{winner.score}/3"
  end
end
