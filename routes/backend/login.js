var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    console.log(req.param('userName'))
    res.render('login', { title: '登陆' });
})

router.post('/' , function(req,res,next){
    res.header("Access-Control-Allow-Origin", "*");
    res.header('Access-Control-Allow-Methods', 'PUT, GET, POST, DELETE, OPTIONS');
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    console.log(123)
})

module.exports = router;