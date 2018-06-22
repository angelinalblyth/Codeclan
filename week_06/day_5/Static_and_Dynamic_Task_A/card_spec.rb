require ('minitest/autorun')
require ('minitest/rg')
require_relative('card.rb')

class TestCard < MiniTest::Test

  def setup
    @card1 = Card.new("Hearts", 1)
    @card2 = Card.new("Spades", 4)
  end

  def test_card_has_suit
    assert_equal("Hearts", @card1.suit)
  end

  def test_card_has_value
    assert_equal(1, @card1.value)
  end

end
