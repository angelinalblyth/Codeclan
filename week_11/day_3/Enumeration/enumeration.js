// var numbers = [1, 2, 3, 4, 5];
// for (var number of numbers){
//   console.log("the number is: " + number);
// }
//
// //Higher Order Functions - takes in a functions as an argument
// numbers.forEach(function(number){
//   console.log('the number is: ' + number);
// });
//
// var printNumber = function(number){
//   console.log('the number is: ' + number);
// };
//
// numbers.forEach(printNumber);
//
//

// var ourForEach = function(array, callbackForItem){
//   for(var item of array){
//     callbackForItem(item);
//   }
// };
//
// var numbers = [1, 2, 3, 4, 5];
//
// ourForEach(numbers, function(number){
//   console.log('the number is:', number);
// })


var Bank = function(){
  this.accounts = [250, 250, 500, 500, 500];
  this.total = 0;
};

Bank.prototype = {
  calculateTotal: function(){
    this.total = 0;
    this.accounts.forEach(function(account){
      this.total += account;
      console.log(this);
    }.bind(this));
  }
}


var bank = new Bank();
console.log('total before:', bank.total);

bank.calculateTotal();
console.log('total after:', bank.total);
