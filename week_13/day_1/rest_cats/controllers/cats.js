const express = require('express');
const catRouter = new express.Router();

let cats = ["Bengal", "British Shorthair", "Siamese"];

//show the cat
catRouter.get('/:id', function(req,res){
  let index = req.params.id;
  res.json({data: cats[index]});
})

//index - all the cats
catRouter.get('/', function(req, res){
  res.json(cats);
})

//create = make a new cat
catRouter.post('/', function(req, res){
  cats.push(req.body.cat);
  res.json(cats);
})

//update
catRouter.put('/:id', function(req, res){
  let index = req.params.id;
  cats[index] = req.body.cat;
  res.json({data: cats});
})

//Delete - destroy a stupid cat
catRouter.delete('/:id', function(req, res){
  let index = req.params.id;
  cats.splice(index, 1);
  res.json({data: cats});
})

module.exports = catRouter;
