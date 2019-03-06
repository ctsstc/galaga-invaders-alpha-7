require_relative 'vector'

class Missile
  include Destroyable

  attr_accessor :vector
  attr_reader :sprite

  def initialize(args)
    @vector = args.fetch(:vector, Vector.new(0, 0))
    @height = args.fetch(:height, 100)
    @width = args.fetch(:width, 100)
    @sprite = '👾'
    @velocity = args.fetch(:velocity, 0)
  end

  def draw
    puts self
  end

  def move
    vector.y += velocity
  end

  def to_s
    "#{sprite} (#{vector.x}#{vector.y})"
  end
end
