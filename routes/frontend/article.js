var express = require('express');
var router = express.Router();
var db = require('../../database/database')

router.get('/getArticleDetail',function(req,res){
    var id = 20
    db.on('connection',function(connection){})
    db.getConnection(function(err,connection){
        var _sql = 'select al.*,sort.sort from article_list al left join article_sort sort on al.sort_id = sort.id where al.id = 20';
        connection.query(_sql,function(err,result){
            console.log(result)
            res.send({
                code:200,
                result:result
            })
            connection.release()
        })
    
    })
})

module.exports = router