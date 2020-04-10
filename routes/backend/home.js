var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    res.redirect('/test1')
})

module.exports = router;