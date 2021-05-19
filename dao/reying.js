const mysql   = require('mysql');
const dbUtil = require('../util/DBUtil');
const { movieDataReping } = require('./comment');

function movieData(user){
    let sql="SELECT * from reying WHERE status = 1 and display=1  ORDER BY id LIMIT 5"

    console.log("sql:",sql);
    return dbUtil.query(sql)
}

function movieDataReying(user){
    let sql="SELECT *  from reying WHERE status = 1 and display=1  ORDER BY id LIMIT 15"

    console.log("sql:",sql);
    return dbUtil.query(sql)
}

function movieDataWsy(user){
    let sql="SELECT *  from reying WHERE status = 0 and display=1  ORDER BY id LIMIT 10"
    console.log("sql:",sql);
    return dbUtil.query(sql);
}


//后台热映排行榜
function movieRyrank(){
    let sql = "select * from reying where status = 1 and display =1 order by rate desc limit 10"
    console.log("sql:",sql);
    return dbUtil.query(sql)
}


//后台信息全部
function movieAllData(status){
    let sql = "SELECT * from reying where status =? and display=1";
    sql = mysql.format(sql,status)
    console.log("sql:",sql);
    return dbUtil.query(sql);
}


//修改热映表信息
function movieReyingEdit(movie){
    let sql = "UPDATE reying SET img=?,movie_name=?,movie_info=?,tag=?,rate=0 WHERE movie_id=?"

    let params = new Array()

    params.push(movie.img)
    params.push(movie.movie_name)
    params.push(movie.movie_info)
    params.push(movie.tag)
    params.push(movie.movie_id)



    sql =mysql.format(sql,params)

    console.log("sql:",sql);
    return dbUtil.query(sql)
}



//插入热映表中得电影
function reyingInsert(movie){
    let sql = "INSERT INTO reying (movie_name,movie_info,movie_id,tag,rate,display,status) VALUES (?,?,?,?,0,1,?)"

    let params = new Array()

    params.push(movie.movie_name)
    params.push(movie.movie_info)
    params.push(movie.movie_id)
    params.push(movie.tag)
    params.push(movie.status)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);

    return dbUtil.query(sql)
}


//搜索电影名
function searchName(movie){
    let sql = "SELECT * from reying WHERE movie_name LIKE '%"
    sql += movie.movie_name +"%' and display = 1 and status ="
    sql+= movie.status
    console.log("sql:",sql);
    return dbUtil.query(sql)
}


//修改电影封面
function alertimg(movie){
    let sql = 'update reying set img = ? where movie_id=? and display=1'

    let params = new Array()

    params.push(movie.imgUrl)
    params.push(movie.movie_id)

    sql =mysql.format(sql,params)
    console.log("sql:",sql);

    return dbUtil.query(sql)
}


//删除电影
function deleteMovie(movie_id){

    let sql ="update reying set display=0 where movie_id=?"

    sql = mysql.format(sql,movie_id)

    console.log("sql:",sql);

    return dbUtil.query(sql)
}

//后台修改电影是上映还是未上映状态
function editstatus(movie){
    let sql ="update reying set status = ? where movie_id =?"

    let params = new Array()
    params.push(movie.status)
    params.push(movie.movie_id)

    sql =mysql.format(sql,params)
    console.log("sql:",sql);
    return dbUtil.query(sql)
}


//后台搜索热映排行榜
function searchry(movie_name){
    let sql ="select * from reying where movie_name like '%"
    sql+=movie_name +"%' and display =1 and status =1 order by rate desc limit 10"

    console.log("sql:",sql);

    return dbUtil.query(sql)
}

module.exports={
    movieData:movieData,
    movieDataReying:movieDataReying,
    movieDataWsy:movieDataWsy,
    movieAllData,
    movieReyingEdit,
    reyingInsert,
    searchName,
    alertimg,
    deleteMovie,
    editstatus,
    movieRyrank,
    searchry
}