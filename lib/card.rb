class Card
  attr_accessor :color, :value
  
  def initialize(value, color)
    @color = color
    @value = value
  end

  def <(other_card)
  end

  def >(other_card)
  end

  def ==(other_card)
  end  
end