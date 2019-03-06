module Destroyable
  #To be determined: where should health be defined?
  attr_accessor :health
  def health(starting_health)
  	@health = health
  end

  def destroy
  	#destruction animation, if applicable
  	#class-specific deletion; set references to object to nil
end