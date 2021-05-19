const mysql   = require('mysql');
const dbUtil = require('../util/DBUtil')

function movieDataReping(user){
    let sql="SELECT * from comment ORDER BY zan desc LIMIT 3"
    
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

function movieData(user){
    let sql="SELECT * from comment ORDER BY zan desc LIMIT 10"
    
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

function movieComment(user){
    let sql ="SELECT  u.user_name,u.user_img,u.user_id,c.img,c.rate,c.time,c.comment,c.zan,c.cai,c.movie_id,c.id from user u INNER JOIN comment c ON c.user_id=u.user_id AND u.user_id=?"

    sql = mysql.format(sql,user)
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

function movieInsertComment(commeninfo){
    let sql = `INSERT INTO comment (img,user_img,user_name,rate,time,comment,zan,cai,movie_id,user_id,movie_name)
    VALUES (?,?,?,?,?,?,0,0,?,?,?);`

    let params = new Array()

    console.log(commeninfo.movie_name);

    params.push(commeninfo.img)
    params.push(commeninfo.user_img)
    params.push(commeninfo.user_name)
    params.push(commeninfo.rate)
    params.push(commeninfo.time)
    params.push(commeninfo.comment)
    params.push(commeninfo.movie_id)
    params.push(commeninfo.user_id)
    params.push(commeninfo.movie_name)

    sql = mysql.format(sql,params)
    console.log("sql:",sql);
    return dbUtil.query(sql)

}


//后台查询评论
function moviecomments (){
    let sql = "select * from comment"

    console.log("sql:",sql);
    return dbUtil.query(sql)
}




//后台删除评论
function deleteComment(comment_id){
    let sql ="delete from comment where id =?"

    sql = mysql.format(sql,comment_id)
    console.log("sql:",sql);

    return dbUtil.query(sql)
}

//后台评论排序
function orderbyzan(){
    let sql = "SELECT * FROM comment ORDER BY zan DESC"

    return dbUtil.query(sql)
}

function orderbycai(){
    let sql = "SELECT * FROM comment ORDER BY cai DESC"

    return dbUtil.query(sql)    
}

function ordertime(){
    let sql = "SELECT * FROM comment ORDER BY id DESC"

    return dbUtil.query(sql)       
}




//后台选择器选项获取
function seloptions(){
    let sql = "select * from selectoptions "

    return dbUtil.query(sql)
}



//搜索评论
function searchcomment(comment){
    let sql = "select * from comment where comment like '%"
    sql += comment +"%'"

    console.log("sql:",sql);
    return dbUtil.query(sql)
}



//前台页面获取评论人数
function commentNumber(comment){
    let sql = "SELECT rm.people_number,rm.rate FROM remen rm WHERE movie_id = ? UNION SELECT ry.people_number,ry.rate FROM reying ry WHERE  movie_id=?"

    let params = new Array()
    params.push(comment.movie_id)
    params.push(comment.movie_id)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}


//更新评论人数和平均分
function uptormcomment(movie){
    let sql = "UPDATE remen SET people_number = ?,rate=? WHERE movie_id =?"

    let params = new Array()
    params.push(movie.people_number)
    params.push(movie.rate)
    params.push(movie.movie_id)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}

function uptorycomment(movie){
    let sql = "UPDATE reying SET people_number = ?,rate=? WHERE movie_id =?"

    let params = new Array()
    params.push(movie.people_number)
    params.push(movie.rate)
    params.push(movie.movie_id)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}



//设置评论点赞



module.exports={
    movieData:movieData,
    movieDataReping:movieDataReping,
    movieComment,
    movieInsertComment,
    moviecomments,
    deleteComment,
    orderbyzan,
    orderbycai,
    ordertime,
    seloptions,
    searchcomment,
    commentNumber,
    uptormcomment,
    uptorycomment
}