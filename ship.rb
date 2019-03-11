class Ship
  include Movable
  include Destroyable
  include Locatable
  include Drawable
  
  WIDTH = 100
  HEIGHT = 100
  ORDNANCE_VELOCITY = -10

  def initialize(screen_width, screen_height)
    x = screen_width / 2
    y = screen_height - half_height
    @vector = Vector.new(x, y)
  end

  def ordnance_velocity
    ORDNANCE_VELOCITY
  end

  def muzzle_location
    Vector.new(x, top_edge)
  end

  def sprite
    "✈️"
  end

  private

  def move(delta)
    x += delta
  end

  def top_edge
    y - half_height
  end

  def half_height
    HEIGHT / 2
  end

end

