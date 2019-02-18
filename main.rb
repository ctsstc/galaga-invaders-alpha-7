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
      missiles.fire_for(ship)
    end
    if key == 'p'
      missiles.fire_for(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. True or False: Good OO design eliminates dependencies.
  - Objects need to interact with each other so they will require some level of 
    dependency, you can try to lessen dependencies though by removing coupling.

2. Briefly list four ways in which a class that collaborates with another class
   is dependent on it. (For example, one dependency is knowing the other class name.)
  1. Another class is used/instantiated within another class.
  2. A message of a class is being used external to the class - public methods,
    public accessors.
  3. The arguments that a message requires; one class knowing another's arguments
  4. The order of arguments; such as the order of arguments to instantiate a new instance.

3. What are two primary factors to consider when assessing the risk of a dependency?
  - How strongly coupled are the dependencies; how close are they to a singularity 😱.
  - Can they be decoupled, or can they be cleaned up at least to lower coupling and 
    avoid brittleness.

4. What is Metz's rule of thumb for choosing a dependency direction?
  - Relate it to the real world, should a water bottle own a human, or 
    should a human own the water bottle?
  - Depend on those who depend less on you; number of dependents + requirements change
  - Depend on those who are unlikely to change

Observation: I feel like often when working on a team someone will avoid
  fully deprecating a method, they will keep in place to currently allow for
  flexibilities, and to avoid a larger refactor, with the hopes that
  later it will be refactored and and deprecated and then never does.

=end
