var express = require('express');
var db = require('../../database/database')
var router = express.Router();

router.get('/' , function(req,res,next){
    
    db.on('connection',function(err,connection){
        if(err){
            console.log('连接失败……')
            return
        }
        console.log('连接成功……')
    })
    db.getConnection(function(err,connection){
        connection.query('select * from history_access',function(err,result){

            var result = JSON.parse(JSON.stringify(result))[0]
            if(err){
                console.log(err)
                return
            }
            res.render('index',{
                title:'首页',
                page:'home',
                user:req.cookies.user,
                result:result.num
            })

            connection.release()
        })
    })
})

module.exports = router;