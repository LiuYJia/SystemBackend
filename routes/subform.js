var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  console.log(res.locals)
    var 
    userName = req.query.txtUserName,
    userPwd = req.query.txtUserPwd,
    userName2 = req.param('txtUserName'),
    userPwd2 = req.param('txtUserPwd');
    console.log('req.query用户名:'+userName);
    console.log('req.query密码:'+userPwd);
    console.log('req.param用户名:'+userName2);
    console.log('req.param密码:'+userPwd2);
    res.render('subform', { title: '提交表单及接收参数示例' });
});

/* GET users listing. */
router.post('/', function(req, res, next) {
  var 
  userName = req.body.txtUserName,
  userPwd = req.body.txtUserPwd;
  console.log('req.body用户名:'+userName);
  console.log('req.body密码:'+userPwd);
  res.render('subform', {
     title: '提交表单及接收参数示例' ,
     page:'subformPage'
    });
});

module.exports = router;
