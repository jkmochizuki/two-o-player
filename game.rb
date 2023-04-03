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
      puts "#{current_player.name}: #{new_question.print_question}"
      answer = gets.chomp.to_i
      
      # check answer
      if answer == new_question.answer
        puts "YES! You are correct."
      else 
        @current_player.lives -= 1
        puts "Seriously? No!"
      end

      # display score
      puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"

      puts "----- NEW TURN -----"
      # switch player
      @current_player = @current_player == @player_1 ? @player_2 : @player_1
    end

    end_game
  end

  def end_game
   winner = @player_1.lives > @player_2.lives ? @player_1 : @player_2
   puts "#{winner.name} wins with a score of #{winner.lives}/3"
   puts "----- GAME OVER -----"
   puts "Goodbye!"
  end
  
end