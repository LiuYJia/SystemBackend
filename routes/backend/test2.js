var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    res.render('index', { 
        title: '测试-测试2', 
        page:'test2',
        user:req.cookies.user
    });
})

module.exports = router;