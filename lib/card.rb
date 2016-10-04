class Card
  attr_accessor :color, :value, :points
  
  def initialize(value, color)
    @color = color
    @value = value
    @points = set_points
  end

  def set_points
    case value
    when :skip, :reverse, :draw_two
      self.points = 20
    when :draw_four, :wild
      self.points = 50
    else
      points = value
    end
  end

  def <(other_card)
    if points < other_card.points
      true
    elsif color.nil?
      points == other_card.points && value < other_card.value
    else
      points == other_card.points && color < other_card.color
    end
  end

  def >(other_card)
    if points > other_card.points
      true
    elsif color.nil?
      points == other_card.points && value > other_card.value
    else
      points == other_card.points && color > other_card.color
    end
  end

  def ==(other_card)
    color == other_card.color &&
    value == other_card.value
  end

  def <=>(other_card)
    if self < other_card
      return -1
    elsif self > other_card
      return 1
    else
      return 0
    end
  end

  def match?(other_card)
    (!color.nil? && color == other_card.color) ||
    (value == other_card.value)
  end

  def to_s
    "Card => value: #{value}, color: #{color}"
  end
end
card1 = Card.new(:reverse, :red)
card2 = Card.new(:reverse, :yellow)
card3 = Card.new(5, :blue)
card4 = Card.new(:draw_four, nil)
card5 = Card.new(:wild, nil)

# puts card1 > card2   # => false
# p card1 > card3   # => true
# p card2 > card3   # => true
# p card4 > card5   # => false

# p card1
# p card4

# p card4.match?(card5) # => false
