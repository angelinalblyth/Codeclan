class Team

attr_accessor :team_name, :players, :coach, :points

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  # #
  # def coach
  #   return @coach
  # end
  #
  # def update_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    return @players.push(new_player)
  end

  def is_a_player(name)
    for player in @players
      if player == name
        return true
      else
        return false
      end
    end
  end

  def team_won(result)
    if result == "Win"
      @points += 1
    end

  end



end
