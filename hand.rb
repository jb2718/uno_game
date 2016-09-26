class Hand
  attr_reader :cards
  def initialize
    @cards = []
  end

  def sort
  end

  def add_card(card)
    @cards << card
  end

  def uno?
    cards.count == 1
  end

  def reset
    @cards = []
  end
end