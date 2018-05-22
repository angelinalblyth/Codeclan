require("minitest/autorun")
require("minitest/rg")

require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")

class BusTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("Bob", 20)
    @passenger2 = Person.new("Bill", 30)
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_bus_has_route_number
    assert_equal(22, @bus.route)
  end

  def test_bus_drive_method
    assert_equal("Brum brum", @bus.drive_method("Brum brum"))
  end

  def test_how_many_passengers_are_on_the_bus
    assert_equal(0, @bus.get_passengers.length)
  end

  def test_pick_up_passenger
    @bus.pick_up(@passenger1);
    assert_equal(1 , @bus.get_passengers.length)
  end

  def test_drop_off_passenger
    @bus.pick_up(@passenger1);
    @bus.pick_up(@passenger2);
    # assert_equal(2, @bus.get_passengers.length)
    @bus.drop_passenger();
    assert_equal(1 , @bus.get_passengers.length)
  end

  def test_empty_bus
    assert_equal(0, @bus.get_passengers.length)
  end

end
