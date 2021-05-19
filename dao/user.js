const mysql   = require('mysql');
const router = require('../controller/user');
const dbUtil = require('../util/DBUtil')

function userData(user){
    let sql='select id,user_id,user_name,user_img,user_ur from user where user_ur=? and password=?'
    
    let params = new Array()
    params.push(user.user_ur)
    params.push(user.password)
    sql = mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}

function auth(user_ur){
    let sql = "select id,user_id,user_name,user_img,user_ur from user where user_ur = ?"

    sql = mysql.format(sql,user_ur)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}


//获取最大值的user_id
function regUserlimit(){
    let sql = "SELECT user_id FROM user ORDER BY user_id DESC limit 1"
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

//获取用户名和昵称
function regUsername(){
    let sql = "SELECT user_name,user_ur FROM user"

    return dbUtil.query(sql)
}


function regUser(user_img,user_name,user_id,user_ur,password){
    let sql ="INSERT INTO user (user_img,user_id,user_name,user_ur,password) VALUES (?,?,?,?,?)"

    let params = new Array()
    params.push(user_img)
    params.push(user_id)
    params.push(user_name)
    params.push(user_ur)
    params.push(password)

    sql =mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}


function testss(){
    let sql ="select user_id,user_name,user_ur from user";

    console.log(sql);

    return dbUtil.query(sql)
}

module.exports={
    testss
}