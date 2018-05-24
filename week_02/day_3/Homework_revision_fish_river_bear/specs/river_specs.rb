require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Marlin")
    @river = River.new("Clyde")
  end

  def test_river_has_name
    assert_equal("Clyde", @river.name)
  end

  def test_river_starts_with_no_fish
    assert_equal(0, @river.get_fish_count())
  end

  def test_add_fish
    @river.add_fish(@fish1)
    assert_equal(1, @river.get_fish_count())
  end

  def test_remove_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    fish = @river.remove_fish
    assert_equal(1, @river.get_fish_count())
    assert_equal(fish, @fish2)
  end

end
