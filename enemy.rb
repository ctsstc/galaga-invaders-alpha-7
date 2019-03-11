class Enemy
  include Destroyable
  include Locatable
  include Drawable
  
  WIDTH = 50
  HEIGHT = 50

  def initialize
    @vector = Vector.new(200, 200)
  end

  def sprite
    "👾"
  end

  def ordnance_velocity
    10
  end
  
  def muzzle_location
    [x, bottom_edge]
  end
  
  def bottom_edge
    y + HEIGHT / 2
  end

end