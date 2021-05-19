const express = require('express');  // 引入web-express模块
let router = new express.Router();   // 引入路由机制
const mysql = require('mysql');
const dbUtil = require('../util/DBUtil')



let fs = require('fs')
let multer = require('multer')

var upload = multer({ dest: 'upload/remen' }).single('file')


const movieDAO = require('../dao/remen');
const { nextTick } = require('process');

router.get('/remen', (req, res) => {
    let promise = movieDAO.movieData()

    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })
})


router.get('/rank', (req, res) => {
    let promise = movieDAO.movieDataRank()

    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })
})



router.get('/number', (req, res) => {
    let promise = movieDAO.movieDataNumber()
    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })
})

router.get('/all', (req, res) => {
    let allArr = {
        limts: req.query.limts
    }

    let promise = movieDAO.movieDataAll(allArr)

    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })

})


router.get('/zuixin', (req, res) => {
    let tagArr = {
        tags: req.query.tags
    }

    let promise = movieDAO.movieDataZuixin(tagArr)

    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })
})


router.get('/search', (req, res) => {
    let movie_info = {
        info: req.query.info
    }

    let promise = movieDAO.movieDataSearch(movie_info)

    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })
})

router.post('/imgse', upload, async (req, res) => {
    console.log(req.body.movie_id);
    if (req.file.length === 0) {
        res.render("error", { message: '上传文件不能为空！' });
        return
    } else {
        let file = req.file;


        fs.renameSync('./upload/remen/' + file.filename, './upload/remen/' + file.originalname);


        res.set({
            'content-type': 'application/json;charset=utf-8'
        });

        imgUrl = 'http://localhost:3000/upload/' + file.originalname;





            let movie = {
                imgUrl: imgUrl,
                movie_id: req.body.movie_id
            }

            let alertData = await movieDAO.alertimg(movie).catch(error=>{
                throw error
            })
            console.log(alertData.affectedRows);
            if(alertData.affectedRows ===1){
                res.send({
                    'code':200,
                    'msg':"修改成功"
                })
            }else{
                res.send({
                    'code':400,
                    'msg':'修改失败,检查后重新上传'
                })
            }
            
            



    }
})



//后台查询热门表所有信息
router.get('/allremen', (req, res) => {
    let promise = movieDAO.movieAllData()

    promise.then((data) => {
        res.send({
            'code': 200,
            data
        })
    })
})



//热门表修改
router.post('/remenedit', upload, (req, res) => {

    console.log(imgUrl);

    let movie = {
        img: req.query.img,
        movie_name: req.query.movie_name,
        movie_info: req.query.movie_info,
        tag: req.query.tag,
        movie_id: req.query.movie_id
    }

    let promise = movieDAO.movieRemenEdit(movie)

    promise.then((data) => {
        res.send({
            'code': 200,
            'msg': '修改成功'
        })
    })
})



//热门表插入电影
router.post('/remeninsert', (req, res) => {

    let movie = {
        movie_name: req.query.movie_name,
        movie_info: req.query.movie_info,
        movie_id: req.query.movie_id,
        tag: req.query.tag
    }

    let promise = movieDAO.remenInsert(movie)

    promise.then((data) => {
        res.send({
            'code': 200,
            'msg': '添加成功'
        })
    },
        (error) => {
            console.log(error);
        }
    )
})



router.post('/searchname', (req, res) => {
    let movie_name = req.query.movie_name;

    let promise = movieDAO.searchName(movie_name)

    promise.then((data) => {
        return res.send({
            'code': 200,
            data
        })
    },
        (error) => {
            return res.send({
                'code': 400,
                error
            })
        })
})



router.post('/deletemovie',(req,res)=>{
    console.log(req.query.suposs);

    let suposs = 101501;
    if(req.query.suposs == suposs){
        let movie_id = req.query.movie_id;
        let promise = movieDAO.deleteMovie(movie_id)
    
        promise.then((data)=>{
            if(data.affectedRows==1){
                res.send({
                    'code':200,
                    'msg':'删除成功'
                })
            }else{
                res.send({
                    'code':400,
                    'msg':'删除失败'
                })
            }
        })
    }else{
        res.send({
            'code':500,
            'msg':'超级密码错误，重新输入'
        })
    }

})


//后台热门排行榜搜索
router.post('/rmsearch',(req,res)=>{
    let movie_name = req.query.movie_name

    let promise = movieDAO.searchrm(movie_name)

    promise.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})

module.exports = router;