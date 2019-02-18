require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  attr_accessor :ship, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      ship.fire(missiles)
    end
  end

end

GalagaInvaders.new.show
