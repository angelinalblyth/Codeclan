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

# def CheckFavFoods(person, food)
#   return "true" if(person[:favourites][:snacks].include?(food))
# end

def add_friend(person, name)
  person[:friends].push(name)
end


def delete_friend(person, name)
  person[:friends].delete(name)

  # for friend in person[:friends]
  #   if friend == name
  #     [:friends].delete(name)
  #   end
  # end
end

def total_money(people)

  total_money = 0

  for person in people
    total_money += person[:monies]
  end

  return total_money

end


def loan_amount(lender, lendee, amount)

  # take value of amount away from lender
  # take value of amount and add to lendee

  lender_amount = lender[:monies] -= amount
  lendee_amount = lendee[:monies] += amount

  #Can take away the lender_amout and lendee_amount
  #And just have lender[:monies] -= amount
  #lendee[:monies] =+ amount

end

def everyones_favourite_foods(people)
  allFoods = []
  for person in people
    for snack in person[:favourites][:snacks]
      allFoods.push(snack)
    end
  end
  return allFoods.length
end

def findPeopleWithNoFriends(array)
  sad_folk = []
  for person in array
    if person[:friends] == []
      sad_folk.push(person[:name])
    end
  end
  return sad_folk
end
