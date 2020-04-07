var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('usecookies', { title: '使用cookies示例' });
});

module.exports = router;
