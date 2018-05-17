require("minitest/autorun")
require("minitest/rg")

class TestExample < Minitest::Test

  def setup()
    @person1 = {
      "name"=> "Alex",
      "age" => 30
    }
  end

  #@ before the person1 means it is a global
  #variable and can be seen by all.

  def test_can_change_name
    @person1["name"] = "Alexander"
    assert_equal("Alexander", @person1["name"])
  end

  def test_person_has_name
    assert_equal("Alex", @person1["name"])
  end

end


# Some will need two vars
# Also we night not return anything just check it has done what we
# want it to do.
#
# num 5 - doesnt return anything. We are checking to see if someone was removed
# by checking the length of the persons friends.
#
# @array(1,2,3,4,5)
#
# def remove_one_from_array(array)
#   array.pop
# end
#
# So this effects the array passed in but doesnt return anything. If you then
# printed the array one would be removed.
#
# Name test_ for the tests.
