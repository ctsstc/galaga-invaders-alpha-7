require_relative 'vector'

module Locatable
  attr_accessor :vector
  
  def x
    vector.x 
  end
  
  def y
    vector.y
  end
  
  def position
    vector
  end
end