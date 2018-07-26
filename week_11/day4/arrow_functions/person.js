const Person = function(){
  this.age = 10;
};
//
//   setInterval(function(){
//     this.age += 1;
//     console.log("My age is:" + this.age);
//   }, 1000);
// };

// setInterval(() =>{
//   this.age += 1;
//   console.log("My age is:" + this.age);
// }, 1000);
// };

Person.prototype.printAge = function() {
  console.log('I am ${this.age} years old');
}


let john = new Person();
john.printAge();
