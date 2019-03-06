module Movable
  attr_accessor :x, :y

  DEFAULT_VELOCITY = 5

  def move_left(amount = DEFAULT_VELOCITY)
    move_x(-amount)
  end

  def move_right(amount = DEFAULT_VELOCITY)
    move_x(amount)
  end

  def move_up(amount = DEFAULT_VELOCITY)
    move_y(-amount)
  end

  def move_down(amount = DEFAULT_VELOCITY)
    move_y(amount)
  end

  private

  def move_x(amount)
    self.x += amount
  end

  def move_y(amount)
    self.y += amount
  end
end
