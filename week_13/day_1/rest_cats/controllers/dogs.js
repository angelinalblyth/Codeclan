const express = require('express');
const dogRouter = new express.Router();

let dogs = ["Doberman", "Sausage", "Dalmation"];

//show one dog
dogRouter.get('/:id', function(req, res){
  let index = req.params.id;
  res.json({data: dogs[index]});
})

//show all dogs
dogRouter.get('/', function(req, res){
  res.json(dogs);
})

//create - make a new dog
dogRouter.post('/', function(req, res){
  dogs.push(req.body.dog);
  res.json(dogs);
})

//update a dog
dogRouter.put('/:id', function(req, res){
  let index = req.params.id;
  dogs[index] = req.body.dog;
  res.json({data: dogs});
})

//delete a dog
dogRouter.delete('/:id', function(req, res){
  let index = req.params.id;
  dogs.splice(index, 1);
  res.json({data: dogs});
})

module.exports = dogRouter;
