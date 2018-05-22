require("minitest/autorun")
require("minitest/rg")

require_relative("../person")
require_relative("../bus")
require_relative("../bus_stop")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Angelina", 28)
  end

  def test_person_has_name
    assert_equal("Angelina", @person.name)
  end


end
