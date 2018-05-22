require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")
require_relative("../river")
require_relative("../bears")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Clown")
    @fish3 = Fish.new("Disco")
  end

  def test_fish_has_name
    assert_equal("Nemo", @fish1.fish)
  end

end
