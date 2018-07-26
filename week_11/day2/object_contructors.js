var myObject = {};

myObject.shape = 'cirlce';
myObject.radius = 10;

var myOtherObject = new Object();
myOtherObject.size = 6;
myOtherObject.color = 'red';

// var house1 = {
//   sqFeet: 2000;
//   bathrooms: 2;
//   bedrooms: 3;
// }

var House = function(sqFeet, bathrooms, bedrooms){
  this.sqFeet = sqFeet;
  this.bathrooms = bathrooms;
  this.bedrooms = bedrooms;
  this.numberOfrooms = function(){
    return(this.bathrooms + this.bedrooms);
  }
}

var house1 = new House(1000, 3, 4);
var house2 = new House(2000, 4, 5);

var Office = function(desks, meetingRooms){
  this.desks = desks;
  this.meetingRooms = meetingRooms;
  this.averageDesksPerMeetingRoom = function(){
    return this.desks / this.meetingRooms;
  };
}

var office1 = new Office(100, 10);
var office2 = new Office(2, 2);

console.log(office1);
console.log(office1.averageDesksPerMeetingRoom());
