var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('usecrypto', { title: '加密字符串示例' });
});

module.exports = router;
