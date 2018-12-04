#player
#turn
#question
#player will choose 2 numbers between 1 and 20, other player answers
#question displays
#if player gets it wrong, they lose a life
#display score after each turn
#if life = 0, player loses

class Player
  attr_accessor :name, :life

  def initialize(name)
    @name = name
    @life = 3
    @turn = true
  end

  def lose_life
    self.life -= 1
  end



end

