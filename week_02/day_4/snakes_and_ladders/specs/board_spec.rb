require( 'minitest/autorun' )
require('minitest/rg')
require_relative( '../board' )

class TestBoard<MiniTest::Test

  def setup()
    @board = Board.new(100)
  end

  def test_board_has_correct_sized_array
    assert_equal(100, @board.tile_array.length)
  end

end
