require_relative 'card_collection'

class Hand < CardCollection
  def uno?
    cards.count == 1
  end
end

# my_hand = Hand.new
# my_hand.add_card(1)
# my_hand.add_card(2)
# puts my_hand