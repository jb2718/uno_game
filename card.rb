class Card
  SYMBOLS = [:skip, :reverse, :draw_two, :draw_four, :wild]
  COLORS = [:red, :blue, :green, :yellow]
  NUMBERS = (0..9).to_a
  # these are types of cards: Discard card, Wild card
  attr_accessor :color, :number, :symbol
  
  def initialize
    @color = nil
    @number = nil
    @symbol = nil
  end

  def match?(other_card)
  end

  def to_s
    {color: @color, number: @number, symbol: @symbol}
  end
end