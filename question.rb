def random_numbers
  number_1 = rand(1..20)
  number_2 = rand(1..20)
  return number_1, number_2
end

class Question
  def initialize
    number_1, number_2 = random_numbers
    index = rand(0..3)
    @questions = [
      "What does #{number_1} plus #{number_2} equal?",
      "What does #{number_1} minus #{number_2} equal?",
      "What does #{number_1} multiplied by #{number_2} equal?",
      "What does #{number_1} divided by #{number_2} equal?"
    ]
    
    @answers = [
      number_1 + number_2,
      number_1 - number_2,
      number_1 * number_2,
      number_1 / number_2
    ]
    @question = @questions[index]
    @answer = @answers[index]
  end

  def print_question
    puts "#{@question}"
  end

  def answer
    @answer
  end

end

# new_question = Question.new
# new_question.print_question
# puts new_question.answer






