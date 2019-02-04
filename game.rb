Class Game
  attr_accessor(:player,:lives,:score,:enemies)
  
  def initialize(player, lives, score, enemies)
    @player = player
    @lives = lives
    @score = score
    @enemies = enemies
  end
end