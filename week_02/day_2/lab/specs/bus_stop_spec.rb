require("minitest/autorun")
require("minitest/rg")

require_relative("../bus_stop")
require_relative("../person")
require_relative("../bus")

class BusStopTest < MiniTest::Test

  def setup
    @person1 = Person.new("bob", 1)
    @person2 = Person.new("bill", 1)
    @bus_stop = BusStop.new("name_of_stop")
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_add_person_to_stop
    @bus_stop.add_person_to_stop(@person1)
    assert_equal(1, @bus_stop.queue.length)
  end
  
  def test_pick_up_all_passengers
    @bus_stop.add_person_to_stop(@person1)
    @bus_stop.add_person_to_stop(@person2)
    assert_equal(2, @bus_stop.queue.length)

    @bus.full_bus(@bus_stop)
    assert_equal(0, @bus_stop.queue.length)
    assert_equal(2, @bus.passengers.length)

  end

end
