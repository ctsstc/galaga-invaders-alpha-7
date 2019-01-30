class Ship
  attr_accessor(:x, :y, :height, :width, :sprite)
  
  def initialize(x, y, height, width, sprite)
    @x = x
	@y = y
	@height = height
	@width = width
	@sprite = sprite
  end
end
