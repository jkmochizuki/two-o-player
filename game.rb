class Game
  attr_accessor :player1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_1
  end

  def play
    while @player_1.lives > 0 && @player_2.lives > 0
      new_question = Question.new
      puts new_question.print_question
      answer = gets.chomp.to_i
      
      if answer == new_question.answer
        puts "YES! You are correct."
      else 
        @current_player.lives -= 1
        puts "Seriously? No!"
      end

      puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
      puts "----- NEW TURN -----"
      @current_player = @current_player == @player_1 ? @player_2 : @player_1
    end

    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end
  
end