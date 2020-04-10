var express = require('express');
var router = express.Router();

router.get('/' , function(req,res,next){
    // res.redirect('/test1')
    res.render('home', { title: 'home',page:'home' });
})

router.post('/' , function(req,res,next){
    // res.redirect('/test1')
    res.render('home', { title: 'home',page:'home' });
})
module.exports = router;