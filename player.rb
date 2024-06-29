
class Player 

  attr_accessor :lives

  def initialize

    @lives = 3

  end

  def sub

    self.lives -= 1

  end

end