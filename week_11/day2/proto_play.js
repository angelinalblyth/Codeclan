// var myPerson = Object.create(null);
// myPerson.walk = function(){
//   console.log("left right left right");
// }
//
//
// var wisePerson = {
//   wisdom: function() {
//     console.log('commit often');
//   }
// }
//
// var myPerson = Object.create(wisePerson);
// myPerson.walk = function() {
//   console.log('left right left right');
// }
//
// myPerson.wisdom();
// myPerson.walk();

// var Fish = function(name, color) {
//   this.name = name;
//   this.color = color;
//   this.swim = function(){
//     console.log('splash');
//   }
// }
var Fish = function(name, color) {
  this.name = name;
  this.color = color;
}

Fish.prototype = {
    swim: function(){
    console.log('splash');
  }
}

fish1 = new Fish('James Pond', 'blue');

console.log(fish1.swim());

//E6 way
var proto = Object.getPrototypeOf(fish1);
console.log(proto);
//E5 way 
var oldProto = fish1.__proto__
console.log(oldProto);
