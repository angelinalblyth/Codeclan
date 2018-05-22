class BusStop

  attr_accessor :name, :queue 

  def initialize(name)
    @name = name
    @queue = []
  end

  def add_person_to_stop(person)
    @queue << person
  end

end
