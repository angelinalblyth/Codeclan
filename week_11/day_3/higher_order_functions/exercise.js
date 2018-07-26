// 1. Write a function, *functionCaller*, that takes a function (myCallback) and a number as parameters. The *functionCaller* returns myCallback called with the number (as an argument).
//
// 2. **Maths Fun:** Write two functions *increment* and *square*. *increment* should take in a number and return the number plus 1. *square* should take in a number and return it multiplied by itself.
//
// Write another function called *doSomeMathsForMe* that takes in a number (*n*) and a function (a callback) and executes the callback, passing in *n* as an argument.
//
// Invoke *doSomeMathsForMe* by passing it a number and the *increment* and/or *square* function.


// const functionCaller = function(myCallBack, number){
//   return myCallBack(number);
// };

const increments = function(number) {
  return number + 1;
};


const square = function(number) {
  return number ** 2;
};

const doSomeMathsForMe = function(number, callback){
  return callback(number);
};

console.log(doSomeMathsForMe(4, square));
