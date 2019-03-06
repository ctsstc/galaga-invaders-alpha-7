class Enemy
  include Destroyable

  WIDTH = 50
  HEIGHT = 50

  attr_accessor :x, :y

  def initialize
    @x = 200
    @y = 200
  end

  def move
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{x}, #{y})"
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