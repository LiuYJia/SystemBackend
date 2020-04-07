var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('usesession', { title: '使用session示例' });
});

module.exports = router;
