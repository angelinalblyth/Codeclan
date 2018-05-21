require("minitest/autorun")
require("minitest/rg")
require_relative("../sport_team")

class TestSportTeam < MiniTest::Test

  def test_team_name
    sports_team = Team.new("Barbreck", ["Angelina", "Louise", "Christy", "Alex"], "Abi")
    assert_equal("Barbreck", sports_team.team_name)
  end

  def test_team_players
    sports_team = Team.new("Barbreck", ["Angelina", "Louise", "Christy", "Alex"], "Abi")
    assert_equal(["Angelina", "Louise", "Christy", "Alex"], sports_team.players)
  end

  def test_team_coach
    sports_team = Team.new("Barbreck", ["Angelina", "Louise", "Christy", "Alex"], "Abi")
    assert_equal("Abi", sports_team.coach)
  end

  def test_set_coach
    sports_team = Team.new("Barbreck", ["Angelina", "Louise", "Christy", "Alex"], "Abi")
    sports_team.update_coach("Scott")
    assert_equal("Scott", sports_team.coach)
  end

end
