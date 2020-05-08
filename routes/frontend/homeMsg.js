var express = require('express');
var router = express.Router();
var db = require('../../database/database')

router.get('/addHistoryAccess',function(req,res){
    var newDate = req.query.date.toString().replace(/\//g,'-')
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        var _sql = "select * from history_access where date = STR_TO_DATE('"+newDate+"','%Y-%m-%d')"
        connection.query(_sql,function(err,result){
            if(result.length==0){
                var _sql2 = "insert into history_access (num,date) values (1,'"+newDate+"')"
            }else{
                var _sql2 = "update history_access set num = num+1 where date = STR_TO_DATE('"+newDate+"','%Y-%m-%d')"
            }
            connection.query(_sql2,function(err,result2){
                res.send('200')
                connection.release()
            })
        })
        
    })
})

router.get('/getOneMsg',function(req,res){
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        connection.query('select * from one_tips',function(err,result){
            if(err){
                res.send({
                    code:400,
                    result:[]
                })
                return;
            }
            res.send({
                code:200,
                result:result
            })
            connection.release()
        })
    })
})

router.get('/getPersonMsg',function(req,res){
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        connection.query('select * from admin',function(err,result){
            if(err){
                res.send({
                    code:400,
                    result:{}
                })
                return;
            }
            res.send({
                code:200,
                result:{
                    name:result[0].nick_name,
                    email:result[0].email,
                    github:result[0].github
                }
            })
            connection.release()
        })
    })
})
router.get('/getRecentArticle',function(req,res){
    db.on('connection',function(){})
    db.getConnection(function(err,connection){
        connection.query('select * from article_list order by date desc',function(err,result){
            if(err){
                res.send({
                    code:400,
                    result:[]
                })
                return;
            }
            res.send({
                code:200,
                result:result
            })
            connection.release()
        })
    })
})

module.exports = router