require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../bears")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", ["Trout", "Salmon", "Hake"])
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal(3, @river.fish_count())
  end

end
