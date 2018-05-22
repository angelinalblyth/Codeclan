require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../bears")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_does_not_have_fish
    assert_equal(0, @river.fish_count())
  end

  def test_river_has_fish
    @river.fish_in_river(@fish1)
    @river.fish_in_river(@fish2)
    @river.fish_in_river(@fish3)
    assert_equal(3, @river.fish_count())
  end

  def test_add_fish_to_bear_remove_from_river
    @bear.eat_up(@fish1)
    assert_equal(2, @bear.stomach_count)
    @river.remove_fish(@fish1)
    assert_equal(0, @river.fish_count)
  end

end
