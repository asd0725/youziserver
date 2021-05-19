/**
 * cnpm install mysql --save
* */
var mysql = require('mysql');
let connection = mysql.createPool({
  host: '42.192.203.33',
  user: 'asd0123',
  password: 'asd0123',
  database: 'movies'
})


const promise_query = function(sql) {
  return new Promise(function(resolve, reject) {
    connection.getConnection((err,connection)=>{
      connection.query(sql, function(error, results, fields) {
        if (error){
          console.log('err:'+error);
        }
        resolve(results);
        connection.release();
      })
    })
  })
}
module.exports = {
     query :promise_query
}

