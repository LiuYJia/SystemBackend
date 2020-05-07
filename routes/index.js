var express = require('express');
var router = express.Router();

router.use('/login', require('./backend/login'));// 登陆

router.use('/error', require('./backend/error'));// 404

//前端请求只需验证请求源
router.all('*',function(req,res,next){

    console.log('*****fffffff*****')
    console.log(req.headers)
    console.log('*****fffffff*****')
    //设置跨域
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
    res.header('Access-Control-Allow-Methods', 'DELETE,PUT,POST,GET,OPTIONS');
    // if((req.headers.referer && req.headers.referer != 'http://59.110.66.89:3000/')&&(req.headers.origin && req.headers.origin != 'http://localhost:8080')){
    //     console.log('aaaaaaaaaaaa')
    //     res.redirect('/error')
    // }else{
    //     console.log('bbbbbbbbbbb')
    //     next()
    // }
    next()
})

router.use('/homeMsg', require('./frontend/homeMsg.js'));// 主页

router.use('/article', require('./frontend/article.js'));// 文章

router.use('/board', require('./frontend/board.js'));// 留言板

//管理系统请求验证来源以及是否登陆
router.get('*',function(req,res,next){

    console.log('*****bbbbbbb*****')
    console.log(req.headers)
    console.log('*****bbbbbbb*****')

    // if(req.headers.host!='59.110.66.89:3000'){
    //     res.redirect('/error')
    // }

    //已登录则匹配管理系统路由
    var _isLogin = req.cookies.user
    if(_isLogin){
        next()
    }else{
        res.redirect('/login')
    }
    
})

router.use('/home', require('./backend/home'));// 主页

router.use('/articleList', require('./backend/article/articleList'));// 文章管理-文章列表

router.use('/handleArticle', require('./backend/article/handleArticle'));// 文章管理-编辑

router.use('/articleSort', require('./backend/article/articleSort'));// 文章管理-文章分类

router.use('/adminMessage', require('./backend/adminMessage'));// 个人资料


module.exports = router;