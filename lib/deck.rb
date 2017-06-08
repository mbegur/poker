require 'card'

class Deck
  attr_reader :deck

  VALUES = ("2".."10").to_a + ["A", "K", "Q", "J"]
  SUITS = [:S, :D, :H, :C]

  def initialize
    @deck = populate
  end

 def populate
   result = []
   VALUES.each do |val|
     SUITS.each do |sym|
       result << Card.new(val, sym)
     end
   end
   result
 end

 def shuffle!
   @deck.shuffle!
 end

 def draw_card
   @deck.pop
 end

end
