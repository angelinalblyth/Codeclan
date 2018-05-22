class Band

  attr_reader :band, :musicians

  def initialize(band_name, musicians)
    @band = band_name
    @musicians = musicians
  end

  def perform(song)
    playing = []
    for musician in @musicians
      playing << musician.play_song(song)
    end
    return playing
  end

end
