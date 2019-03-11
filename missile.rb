require_relative 'vector'

class Missile
  include Destroyable
  include Locatable
  include Drawable

  def initialize(args)
    x = args.fetch(:x, 0)
    y = args.fetch(:y, 0)
    @vector = Vector.new(x, y)  
    @height = args.fetch(:height, 100)
    @width = args.fetch(:width, 100)
    @velocity = args.fetch(:velocity, 0)
  end

  def sprite
    "🚀"
  end

  def move
    vector.y += velocity
  end

end
