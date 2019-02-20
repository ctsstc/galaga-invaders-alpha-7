class Missile

  attr_accessor :x, :y
  attr_reader :sprite

  def initialize(x, y, width, height, x_velocity, y_velocity)
    @x = x
    @y = y
    @height = height
    @width = width
    @sprite = '👾'
    @x_velocity = x_velocity
    @y_velocity = y_velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{sprite} (#{x}#{y})"
  end
end
