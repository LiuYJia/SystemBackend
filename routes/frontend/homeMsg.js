var express = require('express');
var router = express.Router();
var db = require('../../database/database')

router.get('/getOneMsg',function(req,res){
    db.on('connection',function(err){})
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
    db.on('connection',function(err){})
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

module.exports = router