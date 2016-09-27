require 'pry'
require_relative 'player'
require_relative 'card_collection'
require_relative 'uno_deck'
class Game
  attr_accessor :human, :dealer, :deck, :discard_pile # this handles the "start" verb
  
  def initialize  
    @human = Player.new("Huma")
    @dealer = Player.new("Dealer")
    @deck = UnoDeck.new
    @discard_pile = CardCollection.new
  end

  def play
    # Game Flow
    # ----------
    # 1. deal cards and set first discard card
    setup
    # 2. player 1 follows instructions of discard card OR discards a card OR adds a card to hand

    # 3. player 2 follows instructions of discard card OR discards a card OR adds a card to hand

    # 4. Repeat 2 & 3 until first player runs out of cards
  end

  private

  def setup
    deck.populate
    deck.shuffle
    7.times do |_|
      human.hand.add_card(deck.deal_card)
      dealer.hand.add_card(deck.deal_card) 
    end
    discard_pile.add_card(deck.deal_card)
  end
end



# class Turn
# end


# class Flow
#   def initialize
#   end

#   def skip
#   end

#   def reverse
#   end

#   def change_color
#   end
# end

# Loose Verb:
# command --> should this be something a card does?  or will the game tell the player to do it?

uno_game = Game.new
uno_game.play