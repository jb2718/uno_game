require_relative 'card'

class CardCollection
  attr_accessor :cards
  def initialize
    @cards = []
  end

  def shuffle
    3.times { cards.shuffle! }
  end

  def deal_card
    cards.pop
  end

  def add_card(card)
    cards << card
  end

  def empty?
    cards.empty?
  end

  def count
    cards.length
  end

  def sort!
    cards.sort!
  end

  def reset
    cards.clear
  end

  def top_card
    cards.last
  end

end

# hand = CardCollection.new
# card1 = Card.new(:reverse, :red)
# card2 = Card.new(:draw_four, nil)
# card3 = Card.new(5, :blue)
# hand.add_card(card3)
# hand.add_card(card2)
# hand.add_card(card1)
# p hand
# hand.sort!
# p hand