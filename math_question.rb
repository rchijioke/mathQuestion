class MathQuestion
  attr_reader :question, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = @num1 + @num2
    @question = "What does #{@num1} plus #{@num2} equal?"
    puts "DEBUG: Created question: #{@question}, Correct Answer: #{@correct_answer}"
  end

  def ask_question(player)
    puts "#{player.name}: #{@question}"
  end
  
  def check_answer(player, player_answer)
    if player_answer == @correct_answer
      puts "#{player.name}: Correct answer!"
    else
      puts "#{player.name}: Incorrect answer!"
    end
  end
end
