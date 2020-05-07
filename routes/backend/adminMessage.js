var express = require('express');
var router = express.Router();
var crypto = require("crypto");
var md5 = crypto.createHash("md5");
var db = require('../../database/database')

router.get('/' , function(req,res,next){
    
    db.on('connection',function(err,connection){})

    db.getConnection(function(err,connection){
        var _sql = 'select * from admin'
        connection.query(_sql,function(err,result){
            res.render('index', {
                title: '设置-个人资料',
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
    var nickName = req.body.nickName
    var email = req.body.email
    var github = req.body.github
    var userName = req.body.userName
    var passWord = req.body.passWord1

    db.on('connection',function(err){})

    db.getConnection(function(err,connection){
        var _sql = 'update admin set nick_name=?,email=?,github=?,name = ?,password = ? where id = ?';
        var newPass = md5.update(passWord).digest("hex");
        connection.query(_sql,[nickName,email,github,userName,newPass,id],function(err,result){
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