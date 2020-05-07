var mysql = require('mysql')

var pool  = mysql.createPool({
    host     : '59.110.66.89',
    user     : 'root',
    password : '12345',
    database : 'system_backend'
});

module.exports = pool