require_relative 'card_collection'

class UnoDeck < CardCollection
  COLORS = [:red, :blue, :green, :yellow]
  ACTIONS = [:skip, :reverse, :draw_two]
  WILDS = [:draw_four, :wild]

  def populate
    create_numbered_cards
    create_action_cards
    create_wild_cards
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
    4.times do
      stack.each do |card| 
        @cards << Card.new(card.first, card.last)
      end
    end    
  end
end

# deck = UnoDeck.new
# deck.populate
# p deck
# deck.sort!

# p deck.count
