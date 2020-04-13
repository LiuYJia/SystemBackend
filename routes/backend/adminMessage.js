var express = require('express');
var router = express.Router();
var db = require('../../database/database')

router.get('/' , function(req,res,next){
    
    db.on('connection',function(err,connection){
        if(err){
            console.log('连接失败……')
            return
        }
        console.log('连接成功……')
    })

    db.getConnection(function(err,connection){
        var _sql = 'select * from admin'
        connection.query(_sql,function(err,result){
            res.render('index', {
                title: '个人资料',
                page:'adminMessage',
                user:req.cookies.user,
                result:JSON.parse(JSON.stringify(result))[0]
            });

            connection.release()
        })
    })
})

router.post('/' , function(req,res,next){

    var id = req.body.id
    var userName = req.body.userName
    var passWord = req.body.passWord1

    db.on('connection',function(err){})

    db.getConnection(function(err,connection){
        var _sql = 'update admin set name = ?,password = ? where id = ?';
        connection.query(_sql,[userName,passWord,id],function(err,result){
            console.log(result.affectedRows)
            if(result.affectedRows==1){
                res.send({
                    code:200,
                    msg:'保存成功'
                })
            }else{
                res.send({
                    code:400,
                    msg:'保存错误'
                })
            }
            connection.release()
        })
    })
})

module.exports = router;