require_relative 'hand'

class Player
  attr_accessor :hand 
  def initialize(name)
    @name = name
    @hand = Hand.new
  end

#   def pull_card
#   end

  def play_card
    hand.deal_card
  end

#   def choose
#   end
end