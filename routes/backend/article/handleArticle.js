var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    res.render('index', {
        title: '文章管理-编辑',
        page:'handleArticle',
        user:req.cookies.user,
        result:{}
    });
})

router.post('/' , function(req,res,next){
    res.render('index', {
        title: '文章管理-编辑',
        page:'handleArticle',
        user:req.cookies.user,
        result:{}
    });
})

module.exports = router;