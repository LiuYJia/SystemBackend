var mysql = require('mysql')

var pool  = mysql.createPool({
    host     : '127.0.0.1',
    user     : 'root',
    password : '12345',
    database : 'system_backend'
});

module.exports = pool