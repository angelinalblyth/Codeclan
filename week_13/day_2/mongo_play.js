use farm;
db.dropDatabase();

db.animals.insert({
  name: "Eric",
  type: "Polar Bear"
})

db.animals.insert({
  name: "Bob",
  type: "Wild Cat"
})

db.animals.insert({
  name: "Fergus",
  type: "Cow"
})

//db.animals.find()

//db.animals.find({name: 'Eric'})

db.animals.update(
  {name: "Eric"},
  {$set: {type: "Horse"}}
)

// db.animals.find()

db.animals.remove({name: "Eric"})

db.animals.find()
