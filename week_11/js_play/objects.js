var myPerson = {
  name: 'Guybrush',
  age: 32,
  weapon: 'Cutlass',
  talk: function(){
    console.log("Shiver me timbers, it's me: " + this.name);
  }
};

// console.log({myPerson});
//
// console.log(myPerson.weapon);

myPerson.name = 'Guybrush Threepwood';
myPerson.age +=1;
myPerson.occupation = 'mighty pirate';

// console.log({myPerson});

myPerson.talk();

//Three ways to create objects, use the first once as it is simplier.
var object = {};

var anotherObject = Object.create(null);

var yetAnotherObject = new Object();


//Remember for homwork, week 3
console.log(myPerson['name']);

var keyToAccess = 'age';
console.log(myPerson[keyToAccess]);


var keys = Object.keys(myPerson);
for (var key of keys){
  console.log('key', key, 'value', myPerson[key]);
}
