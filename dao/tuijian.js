const mysql   = require('mysql');
const dbUtil = require('../util/DBUtil')

function movieData(user){
    let sql="SELECT * from tuijian ORDER BY id LIMIT 5"
    
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

//修改推荐表
function edittj(tuijian){
    let sql = "update tuijian set movie_name = ? where movie_id =?"

    let params = new Array()

    params.push(tuijian.movie_name)
    params.push(tuijian.movie_id)

    sql = mysql.format(sql,params)
    console.log("sql:",sql);
    return dbUtil.query(sql)
}

module.exports={
    movieData:movieData,
    edittj
}