let numbers = [1, 3, 8, 10, 50, 75];

// let big_numbers = numbers.filter(function(number){
//   return number >= 10;
// });

let big_numbers = numbers.filter(number => number >= 10);

console.log(big_numbers);
