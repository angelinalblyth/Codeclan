var guitars = ["fender", "gibson", "gretsch", "yamaha"];

// guitars.push("yamaha")
//
// console.log(guitars.length);
// console.log(guitars[0]);
//
// guitars[0] = "yamaha";
// console.log(guitars);

// console.log(guitars.slice(1, 2));
// guitars.splice(0, 2, "Epiphone");
// console.log(guitars);

// guitars.shift();
// console.log(guitars);

console.log(guitars.filter(guitar => guitar.length > 6));

// var fruits = ["Apple", "Banana"];
// console.log(fruits.length);
//
// var first = fruits[0];
// console.log(first);
//
// var last = fruits[fruits.length - 1];
// console.log(last);
//
// fruits.forEach(function(item, index, array) {
//   console.log(item, index);
// });
//
// var newLength = fruits.push('Orange');
//
// console.log(fruits.slice(1));
// fruits.splice(1, 0, "Peach");
// console.log(fruits);
