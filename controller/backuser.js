const express = require('express');  // 引入web-express模块
let router = new express.Router();   // 引入路由机制

const jwt = require("jsonwebtoken")

const movieDao = require('../dao/backuser')

router.post('/backuser',(req,res)=>{
    let user = {
        user_ur:req.query.user_ur,
        password:req.query.password
    }

    let promise = movieDao.movieBackUser(user)

    promise.then((data)=>{
        if(data==''){
            res.send({
                'code':400,
                'msg':'账号或者密码错误！'
            })
        }else{
            let username = user.user_ur

            const token = jwt.sign({username},"yyjkn")
            res.send({
                'code':200,
                data,
                token
            })
        }
    })
})


router.get('/user',(req,res)=>{
    let promise = movieDao.backuser()

    promise.then((data)=>{
        res.json({
            'code':200,
            data
        })
    })
})

router.post('/edituser',(req,res)=>{
    let user = {
        user_img:req.query.user_img,
        user_name:req.query.user_name,
        user_ur:req.query.user_ur,
        user_id:req.query.user_id
    }

    let params = movieDao.alterUser(user)

    params.then((data)=>{
        res.send({
            'code':200,
            'msg':'修改成功！'
        })
    })
})

let superss = 101501;

router.post('/deleteuser',(req,res)=>{
    let supers = req.query.supers;
    let user_id = req.query.user_id;

    if(superss ==supers){
        let params = movieDao.deleteUser(user_id)

        params.then((data)=>{
            res.send({
                'code':200,
                'msg':'删除成功'
            })
        })
    }else{
        res.send({
            'code':400,
            'msg':'密码错误'
        })
    }
})

router.post('/searchuser',(req,res)=>{
    let user = req.query.user_info;

    let params = movieDao.searchUser(user)

    params.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})



module.exports = router;