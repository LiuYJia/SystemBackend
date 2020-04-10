var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    console.log(req.param('userName'))
    res.render('login', { title: '登陆' });
})

router.post('/' , function(req,res,next){
    if(req.body.userName==1){
        res.send({
            code:200,
            msg:'登陆成功'
        })
    }else{
        res.send({
            code:400,
            msg:'登陆失败'
        })
    }
})

module.exports = router;