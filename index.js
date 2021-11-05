const express = require('express');
const app = express();
const co = require('./core/dbConfig')
const db = co.db

app.listen(8080, () => console.log('Serveur démarrer: 8080'))

app.get('/', function(req, res) {
    console.log("Default Page")
    res.send('Default Page');
  });

app.get('/classes', (req, res) => {
  console.log("Chargement des classes");

  db.query("SELECT * FROM `classe`", function(err, result){
    if (err) throw err;
    res.send(result);
  })
});

