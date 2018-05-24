class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish_population = []
  end

  def get_fish_count()
    return @fish_population.length
  end

  def add_fish(fish)
    @fish_population << fish
  end

  def remove_fish()
    fish = @fish_population.pop
    return fish
  end
end
