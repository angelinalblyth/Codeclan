const express = require('express');
const parser = require('body-parser');
const server = express();
const MongoClient = require('mongodb').MongoClient;
const ObjectID = require('mongodb').ObjectID;

server.use(parser.json());
server.use(express.static('client/build'));
server.use(parser.urlencoded({extended: true}));


MongoClient.connect('mongodb://localhost:27017', function(err, client){
  if(err){
    console.log(err);
    return;
  }
  const db = client.db("tvshowsdb");
  console.log("Connected to database");

  //add a TV show
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
  });

  //find a TV show
  server.get('/api/tvshows/:id', function(req, res){
    const tvshowCollection = db.collection("tvshows");
    const objectID = ObjectID(req.params.id);
    const filterObject = {_id: objectID};
    tvshowCollection.findOne(function(err, oneShow){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      res.status(201);
      res.json(oneShow);
    })
  });

  //get all TV shows
  server.get('/api/tvshows', function(req, res){
    const tvshowCollection = db.collection("tvshows");
    tvshowCollection.find().toArray(function(err, allShows){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      res.status(201);
      res.json(allShows);
    })
  });

  //Update a tv show
  server.put('/api/tvshows/:id', function(req, res){
    const tvshowCollection = db.collection("tvshows");
    const objectID = ObjectID(req.params.id);
    const filterObject = {_id: objectID};
    const updateData = req.body;
    tvshowCollection.update(filterObject, updateData, function(err, result){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      res.status(201);
      res.json(result);
    })
  });

  //Delete a tv show
  server.delete('api/tvshows/:id', function(req, res){
    const tvshowCollection = db.collection("tvshows");
    const objectID = ObjectID(req.params.id);
    const filterObject = {_id: objectID};
    tvshowCollection.deleteOne(filterObject, function(err, result){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      res.status(201);
      res.json(result);
    })
  });

  //Delete all tv shows
  server.delete('/api/tvshows', function(req, res){
    const tvshowCollection = db.collection("tvshows");
    tvshowCollection.deleteMany(function(err, result){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      res.status(201);
      res.json(result);
    })
  });


  server.listen(3000, function(){
    console.log("Listening on port 3000");
  });

});
