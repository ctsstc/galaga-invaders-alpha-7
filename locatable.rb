require_relative 'vector'

module Locatable
  attr_accessor :vector
  
  def position
    vector
  end
end