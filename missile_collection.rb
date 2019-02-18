class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def fire_for(firable)
    add(Missile.new({
      vector: firable.muzzle_location,
      velocity: firable.ordnance_velocity
    }))
  end

end
