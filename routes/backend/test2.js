var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    res.render('home', { title: 'test2', page:'test2' });
})

module.exports = router;