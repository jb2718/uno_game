require_relative 'card_collection'

class Hand < CardCollection
  def uno?
    cards.count == 1
  end
end