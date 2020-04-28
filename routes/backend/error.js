var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    res.render('error',{
        title:'404',
        page:'404'
    })
    // res.send({
    //     code:404,
    //     msg:'页面蒸发了'
    // })
})

module.exports = router;