module Drawable

  def draw
    puts self
  end

  def to_s
    puts "#{sprite} #{x}, #{y}"
  end
  
  def sprite
    "⚠️"
  end
end