class Ship
  include Movable

  WIDTH = 100
  HEIGHT = 100
  ORDNANCE_VELOCITY = -10

  attr_accessor :x, :y

  def initialize(screen_width, screen_height)
    @x = screen_width / 2
    @y = screen_height - half_height
  end

  def ordnance_velocity
    ORDNANCE_VELOCITY
  end

  def muzzle_location
    Vector.new(x, top_edge)
  end

  def draw
    puts self
  end

  def to_s
    "✈️ (#{x}, #{y})"
  end

  private

  def top_edge
    y - half_height
  end

  def half_height
    HEIGHT / 2
  end

end

Vector = Struct.new(:x, :y)