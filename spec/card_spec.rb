require 'card'

describe Card do
  subject(:jack) {Card.new("J", :D)}

  describe "initialize" do
    it "should initialize with value" do
      expect(jack.value).to eq("J")
    end

    it "should initialize with a suit" do
      expect(jack.suit).to eq(:D)
    end
    
  end

end
