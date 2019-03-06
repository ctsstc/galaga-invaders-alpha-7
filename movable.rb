module Movable
  attr_accessor :x, :y

  DEFAULT_VELOCITY = 5

  def move_left(amount = DEFAULT_VELOCITY)
    move(-amount)
  end

  def move_right(amount = DEFAULT_VELOCITY)
    move(amount)
  end

  private

  def move(amount)
    self.x += amount
  end
end
