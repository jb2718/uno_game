require 'pry'

class Game
  def initialize  # this handles the "start" verb
    # players start with 7 cards each
  end

  def play
    # Game Flow
    # ----------
    # 1. deal cards and set first discard card

    # 2. player 1 follows instructions of discard card OR discards a card OR adds a card to hand

    # 3. player 2 follows instructions of discard card OR discards a card OR adds a card to hand

    # 4. Repeat 2 & 3 until first player runs out of cards
  end

  def deal
  end
end

class Player
  def initialize
  end

  def pull_card
  end

  def play_card
  end

  def choose
  end
end

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

class Hand
end

class Turn
end

class Match
end

class Deck
  def initialize
    @deck = []
  end

  def new_deck
    Card::COLORS.each do |color|
      Card::NUMBERS.each do |num|
        card = Card.new
        card.color = color
        card.number = num
        @deck << card
      end
    end
  end

  def to_s
    @deck.each {|card| puts "#{card.to_s}" }
  end
end

class Flow
  def initialize
  end

  def skip
  end

  def reverse
  end

  def change_color
  end
end

# Loose Verb:
# command --> should this be something a card does?  or will the game tell the player to do it?

lucky_deck = Deck.new
lucky_deck.new_deck
puts "#{lucky_deck}"