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
