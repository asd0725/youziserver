const mysql   = require('mysql');
const router = require('../controller/user');
const dbUtil = require('../util/DBUtil')

function movieBackUser(user){
    let sql = "SELECT id,user_ur,backuser_id,backuser_img,username from backuser where user_ur = ? and password = ?"

    let params = new Array()
    params.push(user.user_ur)
    params.push(user.password)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql);
}

function backuser(){
    let sql = "SELECT * from user"
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

function alterUser(user){
    let sql = "UPDATE user SET user_img=?,user_name=?,user_ur=? WHERE user_id = ?"

    let params = new Array()

    params.push(user.user_img)
    params.push(user.user_name)
    params.push(user.user_ur)
    params.push(user.user_id)

    sql = mysql.format(sql,params)
    console.log("sql:",sql);
    return dbUtil.query(sql)
}


function deleteUser(user){
    let sql = 'DELETE FROM user WHERE user_id =?'
    let superpass = user;

    sql = mysql.format(sql,superpass)
    console.log("sql:",sql);
    return dbUtil.query(sql)
}


function searchUser(user){
    // let sql="SELECT * FROM user WHERE user_name LIKE %?% OR user_ur LIKE %?%"
    let sql = "SELECT * FROM user WHERE user_name LIKE '%"
    sql += user;
    sql += "%'  OR user_ur LIKE '%"
    sql +=user
    sql +="%'"
    

    sql = mysql.format(sql)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}

module.exports = {
    movieBackUser,
    backuser,
    alterUser,
    deleteUser,
    searchUser
}