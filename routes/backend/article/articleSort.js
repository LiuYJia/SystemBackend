var express = require('express');
var router = express.Router();
var db = require('../../../database/database')

router.get('/' , function(req,res,next){
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        var _sql = 'select * from article_sort';
        connection.query(_sql,function(err,result){
            res.render('index', {
                title: '文章管理-文章分类',
                page:'articleSort',
                user:req.cookies.user,
                result:result
            });
            connection.release()
        })
    })
})

router.post('/addSort' , function(req,res,next){
    var sort = req.body.sort
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        var _sql = 'insert into article_sort (sort) values (?)';
        connection.query(_sql,[sort],function(err,result){
            if(result.affectedRows!=0){
                res.send({
                    code:200,
                    msg:'保存成功'
                })
            }else{
                res.send({
                    code:400,
                    msg:'保存失败'
                })
            }
            connection.release()
        })
    })
})

router.post('/deleteSort' , function(req,res,next){
    var id = req.body.id
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        var _sql = 'delete from article_sort where id = ?';
        connection.query(_sql,[id],function(err,result){
            if(result.affectedRows!=0){
                res.send({
                    code:200,
                    msg:'删除成功'
                })
            }else{
                res.send({
                    code:400,
                    msg:'删除失败'
                })
            }
            connection.release()
        })
    })
})

module.exports = router;