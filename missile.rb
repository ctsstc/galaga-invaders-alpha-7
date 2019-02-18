class Missile

  attr_accessor :vector, :velocity

  def initialize(args)
    @vector = args.fetch(:vector, Vector.new(200, 200))
    @velocity = args.fetch(:velocity, 0)
  end

  def launch(velocity)
    @velocity = velocity
  end

  def move
    self.vector.y += velocity
  end

  def draw
    puts self
  end

  def to_s
    "#{falling? ? '☄️' : '🚀'} (#{vector.x}, #{vector.y})"
  end

  def falling?
    velocity > 0
  end

end
