class Board

  attr_reader :tile_array

  def initialize(number)
    @tile_array = Array.new(number)
    p @tile_array
  end

end
