require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../bears")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Clown")
    @fish3 = Fish.new("Disco")
    @river = River.new("Amazon")
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

end
