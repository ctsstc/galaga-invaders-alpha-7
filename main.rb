class GalagaInvaders

  def initialize
    @caption = "Galaga Invaders"
  end

  def update
    # ...
  end

  def draw
    # ...
  end

  def show
    while (true) do
      update
      draw
    end
  end

end

GalagaInvaders.new.show
