// var name = "Colin";
// var secretsFunction = function(){
//   var pinCode = [0,0,0,0];
//   // console.log('pinCode inside secrests function:', pinCode);
//   console.log(name);
// }
//
// secretsFunction();
// console.log(name);
// // console.log('pincode outside secrets function', pinCode);

// var filterNamesByFirstLetter = function(names, letter){
//   var filteredNames = [];
//   for(let name of names){
//     if(name[0] === letter){
//       filteredNames.push(name);
//     }
//   }
//   //console.log('name after loop:', name);
//   return filteredNames;
// }
//
// var students = ["Alice", 'Bob', 'Alyssia', 'Artem', 'Babs'];
//
// var filteredStudents = filterNamesByFirstLetter(students, 'A')
//
// console.log(filteredStudents);
//
//
// //Example of the use of let
// let isItFive = function(number) {
//   let result;
//   if(number === 5){
//    result = true;
//   }else{
//     result = false;
//   }
//   return result;
// }





// let temperature = 30;
//
// if (temperature > 15) {
//   let jacket = false;
//   var happy = true;
// }
// else {
//   let jacket = true;
//   var happy = false;
// }
//
// console.log('jacket after if-else blocks:', jacket);
// console.log('happy after if-else blocks:', happy);


// const calculateEnergy = function(mass){
//   const speedOfLight = 299792458;
//   return mass * speedOfLight **2;
// }
//
// //calculateEnergy = () => 0;
// let energyOfMe = calculateEnergy(50);
//
// console.log('energyOfMe', energyOfMe);



const song = {
  title: 'Caledonia',
  artist: 'Frankie Miller'
}

console.log('song before mutation', song);
song.artist = "Dougie MacLean";
console.log('song after mutation', song);

const songs = [song, 'Happy Birthday', 'Hey Jude']
console.log('songs before mutation', songs);
songs[1] = "Call me Maybe";
songs.pop();
console.log('songs after mutation', songs);
