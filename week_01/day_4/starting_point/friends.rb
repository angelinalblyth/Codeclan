def get_name(person)
  return person[:name]
end

def get_tv_show(tv_show)
  return tv_show[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in  person[:favourites][:snacks]
    return true if (snack == food)
  end
  return false
end

def add_friend(person, name)
  person[:friends].push(name)
end


def remove_friend(person, name)
  for friend in person[:friends]
    if friend == name
      [:friends].delete(name)
    end
  end
end

def total_money(people)

  total_money = 0

  for money in people
    total_money += money[:monies]
  end

  p total_money

end
