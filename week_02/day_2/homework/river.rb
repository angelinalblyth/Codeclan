class River

  attr_accessor :name

  def initialize(name, fish_found)
    @name = name
    @fish = fish_found
  end

  def fish_count()
    return @fish.length()
  end


end
