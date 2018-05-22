require("minitest/autorun")
require("minitest/rg")

require_relative("../band")
require_relative("../instrument")
require_relative("../musician")

class BandTest < MiniTest::Test

  def setup
    piano = Instrument.new("lyrics", "piano")
    drums = Instrument.new("drum kit", "drums")
    musician1 = Musician.new("Bob", piano)
    musician2 = Musician.new("Fred", drums)

    members = [musician1, musician2]
    @band = Band.new("Duet", members)
  end

  def test_does_band_have_name
    assert_equal("Duet", @band.band)
  end

  def test_does_band_can_play_song
    expected = ["Plink Plonk.. I'm playing My Doorbell!", "I'm playing My Doorbell!"]
    assert_equal(expected, @band.perform("My Doorbell"))
  end

end
