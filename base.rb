require_relative 'fort'
class Base

  attr_reader :length, :width, :forts
  
  def initialize(length, width)
    @length = length
    @width = width
    @forts = initForts
  end
  
  def initForts
    forts = []
    xcord = 200
    4.times do
      forts << makeFort(xcord, 400)
      xcord += 507
    end
    forts
  end
  
  def makeFort(vector)
    Fort.new(vector)
  end
  
  def to_s
    forts.each do |fort|
      "🏰 (#{fort.x}, #{fort.y})"
      #fix this later, Maxx doesn't like it
    end
  end
end