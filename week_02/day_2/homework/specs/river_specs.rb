require("minitest/autorun")
require("minitest/rg")

require_relative("../river")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", ["Trout", "Salmon", "Hake"])
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

end
