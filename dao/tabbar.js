const mysql   = require('mysql');
const dbUtil = require('../util/DBUtil')

function movieData(user){
    let sql="select * from tabbar_url"

    console.log("sql:",sql);
    return dbUtil.query(sql)
}



module.exports={
    movieData:movieData,
}