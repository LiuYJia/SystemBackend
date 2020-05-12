var mysql = require('mysql')

var pool  = mysql.createPool({
    host     : 'localhost',
    user     : 'root',
    password : '12345',
    database : 'db'
});

module.exports = pool