class Missile

  attr_accessor :x, :y, :velocity

  def initialize(x, y)
    @x = x
    @y = y
  end

  def launch(velocity)
    @velocity = velocity
  end

  def move
    self.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "🚀 (#{x}, #{y})"
  end

end
