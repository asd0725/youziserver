
const express = require('express');
let router = new express.Router();

var bodyParser = require('body-parser');
// 创建 application/x-www-form-urlencoded 编码解析
var urlencodedParser = bodyParser.urlencoded({ extended: false })

const userDAO = require('../dao/UserDAO')
const url = require('url');

router.get('/login', (req, res) => {
  let user={
    username:req.query.username,
    password:req.query.password
  }
  let promise = userDAO.login(user)
  promise.then((data)=>{
    res.json({
      errno: 0,
      data:data
    });
  },(err)=>{
    console.log('err:'+err);
  })

})


router.post('/add',urlencodedParser,(req,res)=>{
  console.log(req.body);
  console.log(req.body.username);

  let user = {};
  user.username = req.body.username;
  user.usertype=req.body.usertype;
  let promise = userDAO.insert(user);
  promise.then((data)=>{
    res.json({
      errno: 0,
      data:data
    });
  },(err)=>{
    console.log('err:'+err);
  })
})
module.exports=router;
