require 'player'

describe Player do
  current_hand = [Card.new("2", :S), Card.new("3", :S), Card.new("4", :S), Card.new("5", :S), Card.new("2", :S)]
  let(:current_hand) { double(current_hand)}
  subject(:player1) { Player.new("Liseth", current_hand) }


  describe "#initialize" do
    it "should take a name" do
      expect(player1.name).to eq("Liseth")
    end

    it "should take a hand" do
      expect(player1.hand).to eq(current_hand)
    end

  end
end
