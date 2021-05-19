const mysql   = require('mysql');
const dbUtil = require('../util/DBUtil');
const user = require('./user');


//主页热门十条信息
function movieData(user){
    let sql="SELECT id,img,movie_name,movie_id,rate from remen where display=1 ORDER BY rate desc LIMIT 10"
    
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

//排名十条
function movieDataRank(user){
    let sql = "SELECT * from remen where display=1 ORDER BY rate DESC LIMIT 10;"

    console.log("sql:",sql);
    return dbUtil.query(sql)
}

//后台信息全部
function movieAllData(){
    let sql = "SELECT * from remen where display=1";
    console.log("sql:",sql);
    return dbUtil.query(sql);
}

//总电影数量
function movieDataNumber(user){
    let sql = `SELECT img,movie_name,movie_id,rate from remen
    union
    SELECT img,movie_name,movie_id,rate from reying WHERE display=1 and status = 0;`
    console.log("sql:",sql);
    return dbUtil.query(sql)
}
//总电影信息
function movieDataAll(all){
    let sql = `SELECT img,movie_name,movie_id,rate from remen
    union
    SELECT img,movie_name,movie_id,rate from reying WHERE display=1 and status = 0 LIMIT `

    sql = sql+all.limts;
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

//获取最新电影信息
function movieDataZuixin(tag){
    let sql = "SELECT img,movie_name,movie_id,rate FROM remen WHERE tag LIKE '%"

    sql+=tag.tags;
    sql+="%' and display=1 UNION SELECT img,movie_name,movie_id,rate FROM reying WHERE  tag LIKE '%"
    sql+=tag.tags;
    sql+="%' and display=1"


    // UNION
    // SELECT img,movie_name,movie_id,rate FROM reying WHERE movie_name LIKE '%人%' OR tag LIKE '%最新%';

    console.log("sql:",sql);
    return dbUtil.query(sql)
}

//电影搜索
function movieDataSearch(movie_info){
    if(movie_info.info===''){
        movie_info.info = undefined
    }
    let sql = "SELECT img,movie_name,movie_info,rate,movie_id from remen WHERE movie_name LIKE '%"
    sql+=movie_info.info;

    sql+="%' and display =1 UNION SELECT img,movie_name,movie_info,rate,movie_id from reying WHERE movie_name LIKE '%"
    sql+=movie_info.info;
    sql+="%' and display=1"

    console.log("sql:",sql);
    return dbUtil.query(sql)
}

//修改热门表信息
function movieRemenEdit(movie){
    let sql = "UPDATE remen SET img=?,movie_name=?,movie_info=?,tag=?,people_number=0,rate=0 WHERE movie_id=?"

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



//插入热门表中得电影
function remenInsert(movie){
    let sql = "INSERT INTO remen (movie_name,movie_info,movie_id,tag,people_number,rate,display) VALUES (?,?,?,?,0,0,1)"

    let params = new Array()

    params.push(movie.movie_name)
    params.push(movie.movie_info)
    params.push(movie.movie_id)
    params.push(movie.tag)

    sql = mysql.format(sql,params)

    console.log("sql:",sql);

    return dbUtil.query(sql)
}

//搜索电影名
function searchName(movie_name){
    let sql = "SELECT * from remen WHERE movie_name LIKE '%"
    sql += movie_name +"%' and display = 1"

    console.log("sql:",sql);
    return dbUtil.query(sql)
}


//修改电影封面
function alertimg(movie){
    let sql = 'update remen set img = ? where movie_id=? and display=1'

    let params = new Array()

    params.push(movie.imgUrl)
    params.push(movie.movie_id)

    sql =mysql.format(sql,params)
    console.log("sql:",sql);

    return dbUtil.query(sql)
}


//删除电影
function deleteMovie(movie_id){

    let sql ="update remen set display=0 where movie_id=?"

    sql = mysql.format(sql,movie_id)

    console.log("sql:",sql);

    return dbUtil.query(sql)
}



//后台热门排行榜搜索
function searchrm(movie_name){
    let sql = "select * from remen where movie_name like '%"

    sql+=movie_name+"%' and display =1 order by rate desc limit 10"

    console.log("sql:",sql);

    return dbUtil.query(sql)
}

module.exports={
    movieData:movieData,
    movieDataRank:movieDataRank,
    movieDataNumber:movieDataNumber,
    movieDataAll:movieDataAll,
    movieDataZuixin:movieDataZuixin,
    movieDataSearch:movieDataSearch,
    movieAllData,
    movieRemenEdit,
    remenInsert,
    searchName,
    alertimg,
    deleteMovie,
    searchrm
}