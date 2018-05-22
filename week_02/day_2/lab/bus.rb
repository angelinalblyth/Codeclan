class Bus

  attr_accessor :route, :destination, :passengers

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive_method(method)
    return method
  end

  def get_passengers
    return @passengers
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_passenger()
     @passengers.pop
  end

  def empty_bus()
  end

  def full_bus(bus_stop)
    for person in bus_stop.queue
      @passengers << person
    end
    bus_stop.queue = []
  end

end
