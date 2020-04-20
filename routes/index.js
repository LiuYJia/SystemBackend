var express = require('express');
var router = express.Router();

router.use('/', require('./backend/login'));
router.use('/login', require('./backend/login'));// 登陆

router.use('/error', require('./backend/error'));// 404

//前端请求只需验证请求来源
router.get('*',function(req,res,next){
    console.log(req.headers)
    if(req.headers.host!='localhost:3000'){
        res.redirect('/error')
        return;
    }
    res.header('Access-Control-Allow-Origin', 'http://localhost:8080');
    res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
    res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
    next()
})

router.use('/getOneMsg', require('./frontend/getOneMsg.js'));// ONE


//管理系统请求验证来源以及是否登陆
router.get('*',function(req,res,next){
    console.log(req.headers.host)
    if(req.headers.host!='localhost:3000'){
        res.redirect('/error')
    }
    var _isLogin = req.cookies.user
    //已登录则匹配管理系统路由
    if(_isLogin){
        next()
    }else{
        res.redirect('/')
    }
    
})

router.use('/home', require('./backend/home'));// 主页

router.use('/articleList', require('./backend/article/articleList'));// 文章管理-文章列表

router.use('/handleArticle', require('./backend/article/handleArticle'));// 文章管理-编辑

router.use('/articleSort', require('./backend/article/articleSort'));// 文章管理-文章分类

router.use('/adminMessage', require('./backend/adminMessage'));// 个人资料


module.exports = router;