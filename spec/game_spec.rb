require 'game'

describe Game do
  let(:deck) { double("deck") }
  subject(:game1) { Game.new(deck) }

  describe "initialize" do
    it "should initialize a deck" do
      expect(game1.deck.is_a?(Deck)).to eq(true)
    end

    it "should have pot start at 0" do
      expect(game1.pot).to eq(0)
    end

    it "should accept p1 and p2" do
      expect(game1.player1.class).to eq(Player)
      expect(game1.player2.class).to eq(Player)
    end

  end


end
