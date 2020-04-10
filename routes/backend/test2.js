var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    res.render('test2', { title: 'test2', page:'test2' });
})

module.exports = router;