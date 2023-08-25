class Player
  attr_reader :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def answer_question(answer)
    if answer == MathQuestion.correct_answer
      @score += 1
      puts "Player #{name}: Yes! You are correct."
    else
      @lives -= 1
      puts "Player #{name}: Seriously? No!"
    end
  end
  end

  def lose_life
    @lives -= 1
  end

  def to_s
    "#{name}: #{score}/3"
  end
end
