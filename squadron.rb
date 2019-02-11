class Squadron
  
  def initialize(enemy_type, movment_pattern, entry_position)
    @enemy_type = enemy_type
    @movement_pattern = movement_pattern
    @array = path
    @entry_position = entry_position
    @squadron = []
  end
  
  def spawn_squadron
    #put all the enemies into the array
    #set x and y based off of entry position then set offset of following enemies
  end
  
  def follow_pattern
    #call movement with pattern type put into path
    #every update pop next offset and adjust x,y values of each enemy. 
  end
  
end