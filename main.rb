require_relative 'ship'

class GalagaInvaders

  def initialize
    @caption = "Galaga Invaders"
  end

  def update
    #Aliens are moving
  end

  def draw
    @ship.draw
  end

  def show
    update
    while (true)
      update
      draw
    end
  end

  def key_pressed(key)
    key == 'a' ? @ship.move(-2) : key == 'd' ? @ship.move(2) : @ship.fire
  end
  
end

GalagaInvaders.new.show
