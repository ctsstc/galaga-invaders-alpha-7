class Ship

  WIDTH = 100
  HEIGHT = 100
  DEFAULT_VELOCITY = 5

  attr_accessor :x, :y

  def initialize
    @x = 0
    @y = 0
  end

  def fire(missiles)
    missiles.add(Missile.new(nose_location))
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

  private

  def move(delta)
    self.x += delta
  end

  def nose_location
    Vector.new(x, top_edge)
  end

  def top_edge
    y - HEIGHT / 2
  end

end

Vector = Struct.new(:x, :y)
