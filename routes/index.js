var express = require('express');
var router = express.Router();

router.use('/', require('./backend/login'));
router.use('/home', require('./backend/home'));
router.use('/test1', require('./backend/test1'));
router.use('/test2', require('./backend/test2'));

module.exports = router;