var bear = {
  type: 'Grizzly',
  name: 'Yogi',
  belly: [],
  eat: function(fish){
    this.belly.push(fish);
  }
}

console.log(bear);
bear.eat("salmon");
console.log(bear['belly']);
console.log(bear);


//Craigs method
// var checkKey = function(object, keyToCheck) {
//   var keys = Object.keys(object);
//   for(var key of keys){
//     if(key === keyToCheck){
//       return true;
//     }
//
// }  return false;
// }
//
// console.log(checkKey(bear, 'hat'));

//Richards method
// var checkKey = function(object, keyToCheck){
//   if(object[keyToCheck] != undefined){
//     return true
//   }
//   return false;
// }
//
// console.log(checkKey(bear, 'hat'));

//Adri's method
// var checkKey = function(object, keyToCheck) {
//   return object.hasOwnProperty(keyToCheck);
//   }
//
//   console.log(checkKey(bear, 'hat'));


//Colins method
var checkKey = function(object, keyToCheck){
  for(var key in object){
    if (keyToCheck == key){
      return true;
    }
  }
  return false;
}

console.log(checkKey(bear, 'hat'));
