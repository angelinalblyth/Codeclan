require( 'minitest/autorun' )
require('minitest/rg')
require_relative( '../tile' )
class TestTile<MiniTest::Test
  def setup()
    @tile1 = Tile.new(4, 6)
    @tile2 = Tile.new(10, -5)
  end

  def test_tile_has_position
    assert_equal(4, @tile1.position)
  end

  def test_has_positive_effect
    assert_equal( 6, @tile1.effect)
  end

  def test_has_negative_effect
    assert_equal(-5, @tile2.effect)

  end
end
