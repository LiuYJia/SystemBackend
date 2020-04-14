var express = require('express');
var router = express.Router();


router.use('/', require('./backend/login'));
router.use('/login', require('./backend/login'));// 登陆

router.use('/home', require('./backend/home'));// 主页

router.use('/articleList', require('./backend/article/articleList'));// 文章管理-文章列表

router.use('/handleArticle', require('./backend/article/handleArticle'));// 文章管理-编辑

router.use('/articleSort', require('./backend/article/articleSort'));// 文章管理-文章分类

router.use('/adminMessage', require('./backend/adminMessage'));// 个人资料

module.exports = router;