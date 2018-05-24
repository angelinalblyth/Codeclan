require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @river = River.new("Clyde")

    @river.add_fish(@fish1)

    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_empty_stomach
    assert(0, @bear.food_count())
  end

  def test_eat
    @bear.eat_from(@river)
    assert_equal(0, @river.get_fish_count)
    assert_equal(1, @bear.food_count)
  end

end
