var express = require('express');
var router = express.Router();
var db = require('../../../database/database')

router.get('/' , function(req,res,next){
    res.render('index', {
        title: '文章管理-文章列表',
        page:'articleList',
        user:req.cookies.user
    });
})

router.get('/getList' , function(req,res,next){
    console.log(req.query.key)
    if(req.query.key){
        var title = req.query.key.title
        var sort = req.query.key.sort
        var _sql = 'select * from article_list where 1 = 1';
        if(title){
            _sql += ' and title like "%' + title +'%" '
        }
        if(sort){
            _sql += ' and sort_id = "'+sort+'" '
        }
    }else{
        var _sql = 'select * from article_list'
    }
    var page = Number(req.query.page)
    var limit = Number(req.query.limit)
    var _start = page*limit-limit
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        connection.query(_sql,function(err,result){
            
            var _length = result.length
            var _result = result.splice(_start,limit)
            _result.forEach(ele => {
                ele.date = new Date(ele.date).toLocaleString()
            });

            res.send({
                code: 0,
                msg: "success",
                count: _length,
                data: _result
            })
            connection.release()
        })
    })
})

router.post('/' , function(req,res,next){
    res.render('index', {
        title: '文章管理-文章列表',
        page:'articleList',
        user:req.cookies.user,
        result:{}
    });
})

module.exports = router;