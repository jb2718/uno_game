require 'pry'
require_relative 'player'
require_relative 'card_collection'
require_relative 'uno_deck'

class Game
  attr_accessor :human, :dealer, :deck, :discard_pile, :active_player # this handles the "start" verb
  
  def initialize  
    @human = Player.new("Huma")
    @dealer = Player.new("Dealer")
    @deck = UnoDeck.new
    @discard_pile = CardCollection.new
    @active_player = nil
  end

  def play
    # Game Flow
    # ----------
    # 1. deal cards and set first discard card
    setup
    # 2. player 1 follows instructions of discard card OR discards a card OR adds a card to hand
    loop do
      puts "Top Discard Card: #{discard_pile.top_card}"
      puts "Human Hand:"
      p human.hand
      player_turn
    # 3. player 2 follows instructions of discard card OR discards a card OR adds a card to hand
      puts "Dealer card: #{dealer_turn}"
    # 4. Repeat 2 & 3 until first player runs out of cards
      break if @human.hand.empty? || @dealer.hand.empty?
    end

    puts "Game Over!"
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

  def player_turn
    loop do  
      break if @human.hand.empty?
      if command_type?(discard_pile.top_card)
        activate_command(discard_pile.top_card)
      end 
      check_hand_for_matches(discard_pile.top_card, @human.hand)
      display_options
      @human.play_card
    end

  end

  def dealer_turn
    @dealer.play_card
  end

  def command_type?(card)
    [:skip, :reverse, :draw_two, :draw_four, :wild].include?(card.value)
  end

  def activate_command(card)
    case card.value
    when :skip, :reverse
      #ask game to keep current active player active - with only 2 players both commands do the same thing
      puts "This is a skip or reverse!"
    when :draw_two
      #ask game to deal active player 2 cards
      # deal_cards(active_player, 2)
      puts "you must draw two"
    when :draw_four
      puts "you must draw four"
      #ask game to deal active player 4 cards
      # deal_cards(active_player, 4)
    when :wild
      #there may not be anything special here bc color is set when the card is played
      puts "this is a wild card"
    end
    nil
  end

  def deal_cards(player, num_cards)
    num_cards.times do |_|
      player.hand.add_card(deck.deal_card) 
    end
  end

  def check_hand_for_matches(discard_card, hand)
    puts "Checking for matches"
  end

  def display_options
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