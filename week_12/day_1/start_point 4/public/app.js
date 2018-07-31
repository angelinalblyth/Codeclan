// console.log("Howdy!");
//
// let wizard = {
//   name: "Harry",
//   defense: function(){
//   return "Shazam"
//   }
// }
//
// console.log(wizard.defense());

// var tag = document.getElementById('intro');
// tag.innerHTML = "Hackzors!";

// console.log("first log");
// window.onload = function(){
//   var tag = document.getElementById('intro');
//   tag.innerHTML = "Hackzors!";
// console.log("second log");
// };

// console.log("third log");


var app = function(){
  var tag = document.getElementById('intro');
  tag.innerHTML = "Hackzors!";
}

window.onload = app;
