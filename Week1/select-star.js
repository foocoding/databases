var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'foouser',
  password : 'foopassword',
  database : 'foodb'
});

connection.connect();

var select_query = "select * from students"

console.log("Going to run ", select_query)
connection.query(select_query, function (error, results, fields) {
    if (error) {
        throw error;
    }
    for (i in results) {
        console.log(results[i]);
    }
});
connection.end();
