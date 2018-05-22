class River

  attr_accessor :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.length()
  end

  def fish_in_river(fish)
    @fish << fish
  end

  def remove_fish(fish)
    @fish.pop
  end

end
