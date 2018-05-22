require("minitest/autorun")
require("minitest/rg")

require_relative("../person")
require_relative("../bus")
require_relative("../bus_stop")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Bob", 20)
  end

  def test_person_has_name
    assert_equal("Bob", @person.name)
  end

  def test_person_has_age
    assert_equal(20, @person.age)
  end

end
