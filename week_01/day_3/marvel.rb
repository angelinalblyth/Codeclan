# Make a hash containing the avengers Iron Man and Hulk.
# Each avenger has a name (Tony Stark and Bruce Banner) and
# a set of moves with an attack power. Iron man can
# punch (10) and kick (100) and Hulk can smash (1000)
# and roll (500).


avengers = {
  ironman: {
    name: "Tony Stark",
    moves: {
      punch: 10,
      kick: 100
    }
  },
  hulk: {
    name: "Bruce Banner",
    moves: {
      smash: 1000,
      roll: 500
    }
  }

}

p avengers
p avengers[:ironman][:moves][:punch]
