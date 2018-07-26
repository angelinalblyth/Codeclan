const assert = require('assert');
const Athlete = require('../athlete.js')

describe('athlete', function(){

  beforeEach(function(){
     athlete = new Athlete();
  });

  it('Athlete should have a hydration attribute that starts at 100', function() {
    assert.strictEqual(athlete.hydration, 100);
  });

  it('Athlete should have a distance covered attribute starts at 0', function(){
    assert.strictEqual(athlete.distance, 0);
  });

 it('Athlete should be able to run: increasing distance, decreasing hydration', function() {
   athlete.run();
   assert.strictEqual(athlete.hydration, 90);
   assert.strictEqual(athlete.distance, 10);
 });

 it('Athlete should not move when running dehydrated: hydration at 0', function(){
   athlete.run();
 });


})
