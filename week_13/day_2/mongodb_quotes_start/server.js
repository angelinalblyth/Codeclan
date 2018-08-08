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
  const db = client.db("star_wars");
  console.log("Connected to database");

  //add a quote
  server.post('/api/quotes', function(req, res){
    const quotesCollection = db.collection("quotes");
    const quoteToSave = req.body;
    quotesCollection.save(quoteToSave, function(err, result){
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

  //get all quotes
  server.get('/api/quotes', function(req, res){
    const quotesCollection = db.collection('quotes');
    quotesCollection.find().toArray(function(err, allQuotes){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      res.status(201);
      res.json(allQuotes);
    });
  });

  //delete all quotes
  server.delete('/api/quotes', function(req, res){
    const quotesCollection = db.collection('quotes');
    quotesCollection.deleteMany(function(err, result){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      res.status(201);
      res.json(result);
    });
  });

  //update a quote
  server.put('/api/quotes/:id', function(req, res){
    const quotesCollection = db.collection('quotes');
    const objectID = ObjectID(req.params.id);
    const filterObject = {_id: objectID};
    const updatedData = req.body;
    quotesCollection.update(filterObject, updatedData, function(err, result){
      if(err){
        console.log(err);
        res.status(500);
        res.send();
      }
      res.status(201);
      res.json(result);
    });
  })

  server.listen(3000, function(){
    console.log("Listening on port 3000");
  });
});
