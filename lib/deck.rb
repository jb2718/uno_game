require_relative 'card'

class Deck
  attr_accessor :cards
  COLORS = [:red, :blue, :green, :yellow]
  ACTIONS = [:skip, :reverse, :draw_two]
  WILDS = [:draw_four, :wild]
  def initialize
    @cards = []
  end
  
  def create_new
    create_numbered_cards
    create_action_cards
    create_wild_cards
  end

  def shuffle
    3.times { @cards.shuffle! }
  end

  def deal_card
    @cards.pop
  end

  def add_card(card)
    @cards << card
  end
  
  private

  def create_numbered_cards
    stack = (1..9).to_a.product(COLORS)
    2.times do
      stack.each do |card| 
        @cards << Card.new(card.first, card.last)
      end
    end
    [0].product(COLORS).each do |card|
      @cards << Card.new(card.first, card.last)
    end
  end
  
  def create_action_cards
    stack = ACTIONS.product(COLORS)
    2.times do
      stack.each do |card| 
        @cards << Card.new(card.first, card.last)
      end
    end
  end

  def create_wild_cards
    stack = WILDS.product([nil])
    2.times do
      stack.each do |card| 
        @cards << Card.new(card.first, card.last)
      end
    end    
  end
end