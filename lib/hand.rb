class Hand
  attr_reader :hand
  def initialize(hand)
    raise 'must have five cards' unless hand.count == 5
    @hand = hand.sort
  end

  def trade_cards(old_cards, new_cards)
    raise 'must have five cards' unless old_cards.count == new_cards.count
    raise 'cannot discard unowned card' unless has_Cards?(old_cards)
    take_cards(new_cards) && discard_cards(old_Cards) && sort!
    old_cards
  end

  def to_s
    cards.join ' '
  end

  def sort!
    @hand.sort
  end

  def take_cards(cards)
    @hand.push(*cards)
  end 

  def discard_cards(old_cards)
    old_cards.each do |card|
      cards.delete(card)
    end

  end

    def has_cards?(old_cards)
      old_cards.all? { |card| cards.include?(card) }
    end
end
