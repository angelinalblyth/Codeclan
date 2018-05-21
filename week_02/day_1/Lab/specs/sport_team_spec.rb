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

  def test_set_new_coach
    sports_team = Team.new("Barbreck", ["Angelina", "Louise", "Christy", "Alex"], "Abi")
    sports_team.coach = "Scott"
    assert_equal("Scott", sports_team.coach)
  end

  # def test_add_new_player
  #   sports_team = Team.new("Barbreck", ["Angelina", "Louise", "Christy", "Alex"], "Abi")
  #   new_player = sports_team.players.push ("Rachel")
  #   assert_equal(5, sports_team.players.length())
  # end

  def test_add_new_player
    sports_team = Team.new("Barbreck", ["Angelina", "Louise", "Christy", "Alex"], "Abi")
    new_player = sports_team.add_new_player("Rachel")
    assert_equal(["Angelina", "Louise", "Christy", "Alex", "Rachel"], new_player)
  end


end
