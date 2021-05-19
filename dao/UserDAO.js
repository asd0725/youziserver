let mysql=require('mysql')
let dbUtil=require('../util/DBUtil')

function login(user) {
  let sql='select * from user where user_ur=? and password=?'

  let params=new Array()
  params.push(user.username)
  params.push(user.password)
  sql=mysql.format(sql,params)
  console.log('sql:%s',sql)
  return dbUtil.query(sql)
}


module.exports={
  login:login
}
