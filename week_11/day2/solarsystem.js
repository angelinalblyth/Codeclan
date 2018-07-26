var Planet = function(name){
  this.name = name;
}

var SolarSystem = function(name){
  this.name = name;
  this.planets = [];
  this.addPlanet = function(planet){
    this.planets.push(planet);
  }
}

var planet1 = new Planet('Earth');
var planet2 = new Planet('Mars');

var solarSystem = new SolarSystem('Milkyway')

console.log(planet1);
console.log(planet2);
console.log(solarSystem);
console.log(solarSystem.addPlanet(planet1));
console.log(solarSystem.addPlanet(planet2));
console.log(solarSystem);
