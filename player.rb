class Player

  attr_accessor :name, :lives

  def initialize(name)    
    @name = name
    @lives = 3
  end

end

# player_1 = Player.new("Player 1")  
# puts player_1.lives