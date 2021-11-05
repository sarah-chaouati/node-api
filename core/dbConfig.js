const mysql = require('mysql');

const db = mysql.createConnection ({
    host: "127.0.0.1",
    user: "root",
    password: "",
    database:'node_api',
});


db.connect(function(err) {
    if (err) {
        console.log("error db connect !");
    } 
    console.log("Connected DB!");
    // db.query("SELECT * FROM `classe`", function(err, result){
    //     if (err) throw err;
    //    console.log(result);
    // })
});

module.exports = {
    db
    };