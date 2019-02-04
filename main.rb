require_relative 'ship'


class GalagaInvaders

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
  end


  def update
    # aliens are moving.
  end

  def draw
    @ship.draw
  end

  def show
    while (true) do
      update
      draw
    end
  end

  def key_pressed(key)
    if key == 'a'
      @ship.x -= 10
    end
  end

end

GalagaInvaders.new.show
