require_relative 'ship'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :missiles, :squadrons, :base. :game, :wing, :updateables

  def initialize
    @caption = "Galaga Invaders"
    @game = Game.new()
    game.start
    @updateables = create_updateables
  end

  def create_updateables
    @base = Base.new(WIDTH, HEIGHT)
    @missiles = MissileManager.new()
    @ship = Ship.new(WIDTH, HEIGHT)
    @squadrons
    @wing
    Array.new(base, missiles, ship, squadrons, wing)
  end

  def update
    if game.new_level?
      game.next_level()
    end
    if game.time_for_next_squadron?
      squadrons.new_squadron(game.next_pattern)
    end
    if game.time_for_ufo?
      updateables << Ufo.new()
    end
    updateables.each(&:update)
    if squadrons.in_place?
      wing.add_in_place_squadrons(squadrons)
    end
    if wing.is_complete?
      wing.attack
    elsif wing.all_destroyed?
      game.level_finished
    end
    game.tick
    collisions.check(ship, missiles, squadrons, wing, base)
  end

  def draw
    ship.draw
    missiles.draw
    squadrons.draw
    base.draw
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