require("minitest/autorun")
require("minitest/rg")
require_relative("../sport_team")

class TestSportTeam < MiniTest::Test

  def test_team_name
    sports_team = Team.new("Barbreck", ["Angelina", "Louise", "Christy", "Alex"], "Abi")
    assert_equal("Barbreck", sports_team.team_name)
  end


end
