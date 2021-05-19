const express = require('express');  // 引入web-express模块
let router = new express.Router();   // 引入路由机制

const movieDAO=require('../dao/tabbar')

router.get('/tabbar',(req,res)=>{
    let promise = movieDAO.movieData()

    promise.then((data)=>{
        res.json({
            errno:0,
            data:data
        })
    })
})




module.exports=router;