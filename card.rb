class Card
  attr_accessor :color, :value
  
  def initialize(value, color)
    @color = color
    @value = value
  end
end