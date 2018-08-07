const express = require('express');
const app = express();

app.use(express.static('public'));

app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

app.get('/data', function(req, res){
  res.json ({name: "Saturn", size: 90876})
});

app.listen(3000, function(){
  console.log('App running on port ' + this.address().port);
});
