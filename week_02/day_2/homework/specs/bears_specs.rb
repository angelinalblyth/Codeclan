require("minitest/autorun")
require("minitest/rg")

require_relative("../bears")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_stomach_empty
    assert_equal(0, @bear.stomach.count)
  end
end
