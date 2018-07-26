const Athlete = function(){
  this.hydration = 100;
  this.distance = 0;
}

Athlete.prototype.run = function(){
  this.hydration -= 10;
  this.distance += 10;
}

module.exports = Athlete;
