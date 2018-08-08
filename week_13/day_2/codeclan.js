use codeclan;
db.dropDatabase();

db.students.insert([
  {
    name: "Pete",
    favFood: "chili"
  },
  {
    name: "Adri",
    favFood: "Lasagne"
  }
])

// db.students.find();
//
// show collections


db.instructors.insert([
  {
    name: "Steve",
    favFood: "Curry"
  },
  {
    name: "John",
    favFood: "Tofu"
  },
  {
    name: "John",
    favFood: "Omlette"
  }
])

db.instructors.find()

show collections

db.instructors.distinct("name")
