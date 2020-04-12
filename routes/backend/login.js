var express = require('express');
var router = express.Router();
var db = require('../../database/database')

router.get('/' , function(req,res,next){
    console.log(req.param('userName'))
    res.render('login', { title: '登陆' });
})

// 退出
router.get('/logout' , function(req,res,next){
    req.cookies.user = ''
    res.redirect('/login')
})

router.post('/' , function(req,res,next){

    var userName = req.body.userName
    var passWord = req.body.password

    db.on('connection',function(err,connection){
        if(err){
            console.log('field')
            return;
        }
        console.log('success')
    })

    db.getConnection(function(err,connection){
        var _sql = 'select * from admin where name = ?';
        connection.query(_sql,[userName],function(err,result){
            if(result.length == 0){
                res.send({
                    code:400,
                    msg:'用户不存在'
                })
            }else{
                if(result[0].password == passWord){
                    res.cookie('user',userName)
                    res.send({
                        code:200,
                        msg:'登陆成功'
                    })
                }else{
                    res.send({
                        code:400,
                        msg:'密码错误'
                    })
                }
            }

            connection.release()
        })
    })
})

module.exports = router;