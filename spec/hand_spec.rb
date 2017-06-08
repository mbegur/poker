require 'hand'

describe Hand do
  describe '#initiliaze' do
    test = Hand.new([Card.new("2", :S), Card.new("3", :S), Card.new("4", :S), Card.new("5", :S), Card.new("2", :S)])
    it "should initiliaze with an array of 5" do
      expect(test.hand.length).to eq(5)
    end

    it "should have card objects" do
      expect(test.hand.all? {|el| el.is_a?(Card)}).to eq(true)
    end
  end


end
# describe '#straight_flush' do
#   it "should have same suit in order" do
#
#   end

  # describe '#four_kind' do
  #
  # end
  #
  # describe '#full_house' do
  #
  # end
  #
  # describe '#flush' do
  #
  # end
  #
  # describe '#straigh' do
  #
  # end
  #
  # describe '#three_kind' do
  #
  # end
  #
  # describe 'two_pair' do
  #
  # end
  #
  # describe '#one_pair' do
  #
  #
  # end
  #
  # describe '#high_card' do
  #
  # end
