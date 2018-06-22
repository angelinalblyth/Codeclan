require ('minitest/autorun')
require ('minitest/rg')
require_relative('card.rb')
require_relative('testing_task_2.rb')

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("Hearts", 1)
    @card2 = Card.new("Spades", 4)
    @game1 = CardGame.new()
  end

  def test_card_is_ace
    assert_equal(true, @game1.checkforAce(@card1))
  end

  def test_highest_card
    assert_equal("Spades", @game1.highest_card(@card1, @card2))
  end

  def test_total
    cards = [@card1, @card2]
    assert_equal("You have a total of 5", @game1.cards_total(cards))
  end


end
