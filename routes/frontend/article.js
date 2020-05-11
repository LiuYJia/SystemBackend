var express = require('express');
var router = express.Router();
var db = require('../../database/database')

router.get('/getArticleSort' , function(req,res,next){
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        var _sql = 'select * from article_sort';
        connection.query(_sql,function(err,result){
            if(err){
                res.send({
                    code:400,
                    result:[]
                });
            }
            res.send({
                code:200,
                result:result
            });
            connection.release()
        })
    })
})

router.get('/getArticleDetail',function(req,res){
    console.log(req.query)
    var id = req.query.id
    db.on('connection',function(connection){})
    db.getConnection(function(err,connection){
        var _sql = 'select al.*,sort.sort from article_list al left join article_sort sort on al.sort_id = sort.id where al.id = ?';
        connection.query(_sql,[id],function(err,result){
            res.send({
                code:200,
                result:result
            })
            var _sql2 = 'update article_list set browse_times = browse_times+1 where id = ?'
            connection.query(_sql2,[id],function(err,result){
                connection.release()
            })
            
        })
    
    })
})

router.get('/getArticleList',function(req,res){
    console.log(req.query)
    if(req.query.isRecommend){
        var _sql = 'select * from article_list order by browse_times desc';
    }else{
        var sortId = req.query.sortId
        var page = Number(req.query.pageNum)
        var limit = Number(req.query.pageSize)
        var _start = page*limit-limit
        var _sql = 'select * from article_list where sort_id = '+ sortId;
    }
    
    db.on('connection',function(connection){})
    db.getConnection(function(err,connection){
        connection.query(_sql,function(err,result){
            if(err){
                console.log(err)
            }
            if(req.query.isRecommend){
                res.send({
                    code: 200,
                    result: result.splice(0,10)
                })
            }else{
                var _length = result.length
                var _result = result.splice(_start,limit)
                _result.forEach(ele => {
                    ele.date = new Date(ele.date).toLocaleString()
                });
                res.send({
                    code: 200,
                    count: _length,
                    result: _result
                })
            }
            connection.release()
        })
    
    })
})

module.exports = router