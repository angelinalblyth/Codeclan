class Bear

  attr_reader :name

  def initialize(name, type)
    @name = name
    @type = type
    @belly = []
  end

  def food_count()
    return @belly.length()
  end


  def eat_from(river)
    fish = river.remove_fish()
    @belly << fish
  end
end
