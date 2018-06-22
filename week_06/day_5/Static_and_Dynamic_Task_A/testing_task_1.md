### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

# The below if statement assigns 1 to card.value, its not checking to see if card.value is 1.
  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

# There isnt a card name, only suit and value.
# The return statement wont return the card name, it needs to be suit or value 
# dif is incorrect, should be def
# Extra end
# also need a , between card1 and card2

  dif highest_card(card1 card2)
  if card1.value > card2.value
    return card.name
  else
    card2
  end
end
end

# Total doesn't have a start value, change this to total = 0

def self.cards_total(cards)
  total
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end

# Need an extra end here
```
