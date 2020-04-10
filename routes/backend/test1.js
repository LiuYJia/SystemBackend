var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    console.log('ssssssssssssss')
    res.render('home', { title: 'test1', page:'test1' });
})

module.exports = router;