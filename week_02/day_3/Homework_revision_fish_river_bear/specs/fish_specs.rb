require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")

class FishTest < MiniTest::Test

  def test_fish_has_name
    fish = Fish.new("Nemo")
    assert_equal("Nemo", fish.name)
  end

end
