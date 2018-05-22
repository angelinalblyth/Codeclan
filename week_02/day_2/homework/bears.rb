class Bear

  attr_accessor :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count()
    return @stomach.length()
  end

  def eat_up(fish)
    @stomach << fish
  end

  def bear_can_roar(sound)
    return sound
  end

end
