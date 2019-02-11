class Fort
  attr_reader :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
    @blocks = initBlocks
  end
  
  def initBlocks
    blocks = []
    4.times do
      blocks << FortBlock.new
    end
    blocks
  end
end