var express = require('express');
var router = express.Router();
var multer = require('multer');
var storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, 'public/images')
    },
    filename: function(req, file, cb) {
        var fileFormat = file.originalname.split(".");
        var filename = 'article_' + Date.now() + "." + fileFormat[fileFormat.length - 1]
        cb(null, filename)
    }
})
var upload = multer({ storage: storage });
var db = require('../../../database/database')
var getTime = require('../../../method/method')



router.get('/' , function(req,res,next){
    res.render('index', {
        title: '文章管理-编辑',
        page:'handleArticle',
        user:req.cookies.user,
        result:{}
    });
})

router.post('/saveArticle' , function(req,res,next){
    var id = req.body.id
    console.log(req.body)
    var obj = {
        id:req.body.id,
        title:req.body.title,
        content:req.body['myEditor-markdown-doc'],
        date:getTime(),
        author:'LiuYJia',
        sort:req.body.sort
    }
    
    db.on('connection',function(err){})
    // update table set [title=1,name=2] where id = 1
    if(!id){
        var _sql = 'insert into article_list (title,content,date,author,browse_times,sort_id) values (?,?,?,?,?,?);'
        db.getConnection(function(err,connection){
            connection.query(_sql,[obj.title,obj.content,obj.date,obj.author,0,obj.sort],function(err,result){
                if(err){
                    console.log(err)
                    return
                }
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
    }
})

router.post('/uploadImg',upload.single('editormd-image-file'), function(req,res,next){
    var imgName = req.file.filename
    // var _url =  'http://'+req.headers.host+'/images/'+imgName
    var _url = '/images/'+imgName
    res.send({
        success : 1, //0表示上传失败;1表示上传成功
        message : "successful",
        url: _url //上传成功时才返回
    })
})

module.exports = router;