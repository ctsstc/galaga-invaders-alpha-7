require_relative 'missile'

class Ship

  WIDTH = 100
  HEIGHT = 100
  DEFAULT_VELOCITY = 5

  attr_accessor :x, :y

  def initialize(screen_width, screen_height)
    @x = screen_width / 2
    @y = screen_height - half_height
  end

  def ordnance_velocity
    -10
  end

  def move_left
    move(-DEFAULT_VELOCITY)
  end

  def move_right
    move(DEFAULT_VELOCITY)
  end

  def draw
    puts self
  end

  def to_s
    "✈️ (#{x}, #{y})"
  end

  def muzzle_location
    Vector.new(x, top_edge)
  end

  private

  def move(delta)
    self.x += delta
  end

  def top_edge
    y - half_height
  end

  def half_height
    HEIGHT / 2
  end

end

Vector = Struct.new(:x, :y)
