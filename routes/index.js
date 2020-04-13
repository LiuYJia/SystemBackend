var express = require('express');
var router = express.Router();

router.use('/', require('./backend/login'));
router.use('/home', require('./backend/home'));
router.use('/adminMessage', require('./backend/adminMessage'));
router.use('/login', require('./backend/login'));
router.use('/test1', require('./backend/test1'));
router.use('/test2', require('./backend/test2'));

router.use('/testpage', require('./testpage'));

module.exports = router;