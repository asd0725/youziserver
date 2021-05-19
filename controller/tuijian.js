const express = require('express');  // 引入web-express模块
let router = new express.Router();   // 引入路由机制

const movieDAO = require('../dao/tuijian')

router.get('/tuijian', (req, res) => {
    let promise = movieDAO.movieData()

    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })
})



//修改推荐表
router.post('/edittj',(req,res)=>{
    let tuijian={
        movie_name:req.query.movie_name,
        movie_id:req.query.movie_id
    }

    let promise = movieDAO.edittj(tuijian)

    promise.then((data)=>{
        if(data.affectedRows==1){
            res.send({
                'code':200,
                'msg':'修改成功'
            })
        }else{
            res.send({
                'code':400,
                'msg':'修改失败'
            })
        }
    })
})


module.exports = router;