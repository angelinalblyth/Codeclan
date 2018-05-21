class Team

  # attr_reader :team_name, :players, :coach

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
  end

  def team_name()
    return @team_name
  end

  def players
    return @players
  end

  def coach
    return @coach
  end

  def update_coach(new_coach)
    @coach = new_coach
  end


end
