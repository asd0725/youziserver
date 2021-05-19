const mysql   = require('mysql');
const dbUtil = require('../util/DBUtil')


//获取电影详情
function movieDetail(user){
    let sql="SELECT * from movie_detail where movie_id=?"
    let movie_id = user;
    sql = mysql.format(sql,movie_id)
    console.log("sql:",sql);
    return dbUtil.query(sql)
}


//查询演员信息
function movieDetailActtor(movie_id){
    let sql = "SELECT * from movie_actor where movie_id=?"
    sql = mysql.format(sql,movie_id)
    console.log("sql:",sql);
    return dbUtil.query(sql)
}


//修改电影详情表
function moviealterdetail(movie){
    let sql = "UPDATE movie_detail SET movie_id=?,movie_name=?,director=?,Screenwriter=?,actor=?,type=?,area=?,language=?,showtime=?,movietime=?,brief=? WHERE movie_id =?"

    let params = new Array()
    params.push(movie.movie_id)
    params.push(movie.movie_name)
    params.push(movie.director)
    params.push(movie.Screenwriter)
    params.push(movie.actor)
    params.push(movie.type)
    params.push(movie.area)
    params.push(movie.language)
    params.push(movie.showtime)
    params.push(movie.movietime)
    params.push(movie.brief)
    params.push(movie.movie_id)
    sql = mysql.format(sql,params)

    return dbUtil.query(sql)
}



//修改电影详情封面
function alertimg(movie){
    let sql = 'update movie_detail set movie_img = ? where movie_id=?'

    let params = new Array()

    params.push(movie.movie_img)
    params.push(movie.movie_id)

    sql =mysql.format(sql,params)
    console.log("sql:",sql);

    return dbUtil.query(sql)
}

//添加电影封面
function insertimg(movie){
    let sql = "insert into movie_detail (movie_img,movie_id) values(?,?)"

    let params = new Array()

    params.push(movie.movie_img)
    params.push(movie.movie_id)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}




//修改导演演员图片
function alertdirectorimg(movie){
    let sql = 'update movie_actor set actor_img = ? where movie_id=? and derive=?'

    let params = new Array()

    params.push(movie.movie_img)
    params.push(movie.movie_id)
    params.push(movie.derive)

    sql =mysql.format(sql,params)
    console.log("sql:",sql);

    return dbUtil.query(sql)
}


//修改演员信息
function alertactorinfo(movie){
    let sql = "update movie_actor set actor_name = ?,actor_role=? where movie_id = ? and derive=?"

    let params = new Array()
    params.push(movie.actor_name)
    params.push(movie.actor_role)
    params.push(movie.movie_id)
    params.push(movie.derive)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);

    return dbUtil.query(sql)
}



//添加导演演员图片
function insetdirector(movie){
    let sql = "insert into movie_actor (actor_img,movie_id,derive) values (?,?,?) "

    let params = new Array()

    params.push(movie.actor_img)
    params.push(movie.movie_id)
    params.push(movie.derive)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}





module.exports={
    movieDetail,
    movieDetailActtor,
    moviealterdetail,
    alertimg,
    alertdirectorimg,
    alertactorinfo,
    insetdirector,
    insertimg
}