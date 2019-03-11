class Fort
  
  include Drawable
  include Locatable
  
  def initialize(vector)
    @vector = vector 
    @blocks = initBlocks
  end
  
  def sprite
    "🏯"
  end
  
  def initBlocks
    blocks = []
    4.times do
      blocks << FortBlock.new
    end
    blocks
  end
end