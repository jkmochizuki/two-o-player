class Player

  attr_accessor :number, :lives

  def initialize(number)    
    @number = number
    @lives = 3
  end

  def info
    "Player #{self.number}"
  end

  def lives
    lives = !correct_answer ? -1 : lives
  end

end

player_1 = Player.new("1")  
puts player_1.info

player_2 = Player.new("2")  
puts player_2.info
puts player_2.lives

# current player