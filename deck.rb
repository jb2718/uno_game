require_relative 'card'

class Deck
  attr_accessor :cards
  COLORS = [:red, :blue, :green, :yellow]
  ACTIONS = [:skip, :reverse, :draw_two, :draw_four, :wild]
  def initialize
    @cards = []
  end
  
  def generate
    create_numbered_cards
    create_action_cards
  end
  
  def create_numbered_cards
    stack = (1..9).to_a.product(COLORS)
    2.times do
      stack.each  do |card| 
        @cards << Card.new(card.first, card.last)
      end
    end
    [0].product(COLORS).each do |card|
      @cards << Card.new(card.first, card.last)
    end
  end
  
  def create_action_cards
  end
  
  def shuffle
    @cards.shuffle!
  end
end

my_deck = Deck.new
my_deck.create_numbered_cards
p my_deck.cards