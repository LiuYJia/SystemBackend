var express = require('express');
var router = express.Router();
var db = require('../../database/database')

router.get('/',function(req,res){
    db.on('connection',function(err){})
    db.getConnection(function(err,connection){
        connection.query('select * from one_tips',function(err,result){
            res.send({
                url:result[0].img_url,
                text:result[0].text,
                type:result[0].img_type
            })
        })
    })

})

module.exports = router