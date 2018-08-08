const express = require('express');
const parser = require('body-parser');
const server = express();
const MongoClient = require('mongodb').MongoClient;
const ObjectID = require('mongodb').ObjectID;


MongoClient.connect('mongodb://localhost:27017', function(err, client){
  if(err){
    console.log(err);
    return;
  }
  const db = client.db("tvshowsdb");
  console.log("Connected to database");

  //add a tv TV show
  server.post('/api/tvshows', function(req, res){
    const tvshowCollection = db.collection("tvshows");
    const newTvShow = req.body;
    tvshowCollection.save(newTvShow, function(err, result){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      console.log('saved to database');
      res.status(201);
      res.json(result.ops[0]);
    })
  })

  //get all TV shows

  //Update a tv show

  //Delete a tv show


});
