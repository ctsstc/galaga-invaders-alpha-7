require_relative 'vector'

class Missile
  include Movable
  include Destroyable

  include Drawable
  
  attr_accessor :x, :y

  def initialize(args)
    @x = args.fetch(:x, 0)
    @y = args.fetch(:y, 0)
    @height = args.fetch(:height, 100)
    @width = args.fetch(:width, 100)
    @velocity = args.fetch(:velocity, 0)
  end

  def sprite
    "🚀"
  end

  def move
    move_down(velocity)
  end

end
