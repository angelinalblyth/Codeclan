// Anonymous functions - A functions without a name
// Example of anonymous functions below

//You might have a button on your site that you want someone to click but
//have it delayed for some reason. You will use the below. 2000 is 2 seconds.


// setTimeout(function(){
//   console.log("Hello from the past!");
// }, 2000);

// When we use a function as an arguement like in the above it is called a callback.

//Below sets the functions to a variable which you can then call without the brackets.
const sayHello = function(){
console.log("Hello from the past!");
};

setTimeout(sayHello, 2000);

// Named functions is a function with a name.


// A Higher Order Function is a function that can return a function, or accepts a function as an arguement
