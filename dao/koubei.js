const mysql   = require('mysql');
const dbUtil = require('../util/DBUtil')

function movieData(user){
    let sql="SELECT * from koubei ORDER BY id LIMIT 10"
    
    console.log("sql:",sql);
    return dbUtil.query(sql)
}



module.exports={
    movieData:movieData,
}