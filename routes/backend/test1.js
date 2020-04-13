var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){

    res.render('index', {
        title: '测试-测试1',
        page:'test1',
        user:req.cookies.user
    });
})

router.post('/' , function(req,res,next){
    console.log(req.body)
    res.render('index', {
        title: '测试-测试1',
        page:'test1',
        user:req.cookies.user
    });
})

module.exports = router;