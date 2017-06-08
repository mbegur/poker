require 'deck'
class Game
  attr_reader :pot, :player1, :player2, :deck

  def initialize(deck = Deck.new)
    @deck = deck
    the_cards_dealt = cards_dealt
    @player1 = Player.new("Liseth", Hand.new(the_cards_dealt[0]))
    @player2 = Player.new("Mallik", Hand.new(the_cards_dealt[1]))
    @pot = 0
  end

  def cards_dealt
    player1 = []
    player2 = []
    @deck.shuffle!
    5.times do
      player1 << deck.draw_card
      player2 << deck.draw_card
    end
    [player1, player2]
  end
  
end
