require_relative 'ship'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @missiles = MissileManager.new()
    @ship = Ship.new(WIDTH, HEIGHT)
  end

  def update
    ship.update
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
      missiles.fire_from(ship)
    elsif key == 'p'
      missiles.fire_from(alien)
    end
  end

end

GalagaInvaders.new.show