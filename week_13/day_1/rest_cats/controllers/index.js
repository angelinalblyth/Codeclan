const express = require('express');
const router = new express.Router();

router.use('/cats', require('./cats'));

router.use('/dogs', require('./dogs'));

router.get('/', function(req, res){
  res.json({date: "Welcome"});
});

router.get('/about', function(req, res){
  res.json({date: "here's what we're about, mate"});
});

module.exports = router;
