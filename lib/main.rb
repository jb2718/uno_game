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

class Turn
end

class Match
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
