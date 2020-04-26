var express = require('express');
var router = express.Router();
var db = require('../../database/database')
var getTime = require('../../method/method')

router.post('/saveBoard',function(req,res){
    var data = req.body
    console.log(data)
    var _sqlArr = [data.name,data.contact,getTime(),data.content]
    console.log(getTime())
    db.on('connection',function(connection){})
    db.getConnection(function(err,connection){
        console.log(err)
        var _sql = 'insert into msg_board (user_name,user_email,date,content) values (?,?,?,?)';
        connection.query(_sql,_sqlArr,function(err,result){
            if(err){
                console.log(err)
            }
            res.send({
                code:200,
                result:result
            })
            connection.release()
        })
    
    })
})


router.get('/getBoard',function(req,res){
    db.on('connection',function(connection){})
    db.getConnection(function(err,connection){
        var _sql = 'select * from msg_board order by date desc';
        connection.query(_sql,function(err,result){
           
            result = result.map(function(e){
                var obj = {
                    name:e.user_name,
                    content:e.content,
                    date:e.date
                }
                return obj;
            })
            res.send({
                code:200,
                result:result
            })
            connection.release()
        })
    
    })
})

module.exports = router