require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
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
    if key == 'p'
      alien.fire(missiles)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. True or False: Good OO design eliminates dependencies.
2. Briefly list four ways in which a class that collaborates with another class
   is dependent on it. (For example, one dependency is knowing the other class name.)
3. What are two primary factors to consider when assessing the risk of a dependency?
4. What is Metz's rule of thumb for choosing a dependency direction?
=end
