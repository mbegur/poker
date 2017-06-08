require 'deck'

describe Deck do
  subject(:card_deck) { Deck.new }
  let(:jack) { double("jack") }

  describe "#initialize" do

    it "should initialize with 52 uniq cards" do
      expect(card_deck.deck.length).to eq(52)
    end

    it "all cards shoul be uniq values" do
      expect(card_deck.deck.uniq).to eq(card_deck.deck)
    end
  end

  describe "#shuffle!" do
    it "should shuffle the cards" do
      new_cards = card_deck.shuffle!
      expect(new_cards).not_to eq(Deck.new.deck)
    end
  end

  describe 'draw_card' do
    it "should take 1 card from top" do
      card_deck.draw_card
      expect(card_deck.deck.length).to eq(51)
    end

    it "deck should not include drawn card" do
      drawn_card = card_deck.draw_card
      expect(card_deck.deck).not_to include(drawn_card)
    end

    it "drawn card should be a card object" do
      drawn_card = card_deck.draw_card
      expect(drawn_card.class).to eq(Card)
    end
  end
end

  #populate
  #spade
  #diamons
  #clubs
  #hearts
  #diaplay ???

  #shuffleing card
  #take card
