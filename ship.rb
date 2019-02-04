class Ship
  attr_accessor(:x, :y, :height, :width, :sprite)

  def initialize(x, y, height, width, sprite)
    @x = x
    @y = y
    @height = height
    @width = width
    @sprite = sprite
  end

  def shoot()
    # TODO: make sure this matches up with Missile Implementation when added
    new Missile.new(@x, 1)
  end

  def move_left()
    move(-1)
  end

  def move_right()
    move(1)
  end

  private

  def move(amount)
    @x += amount
  end

end
