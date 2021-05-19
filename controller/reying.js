const express = require('express');  // 引入web-express模块
let router = new express.Router();   // 引入路由机制

let fs = require('fs')
let multer = require('multer')

var upload = multer({ dest: 'upload/reying' }).single('file')



const movieDAO = require('../dao/reying')

router.get('/reying', (req, res) => {
    let promise = movieDAO.movieData()

    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })
})
router.get('/dreying',(req,res)=>{
    let promise = movieDAO.movieDataReying()

    promise.then((data)=>{
        res.json({
            errno:0,
            data:data
        })
    })
})
router.get('/wsy',(req,res)=>{
    let promise = movieDAO.movieDataWsy()

    promise.then((data)=>{
        res.json({
            errno:0,
            data:data
        })
    })
})


//后台热映排行榜
router.get('/ryrank',(req,res)=>{
    let promise = movieDAO.movieRyrank()

    promise.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})




router.get('/ryall', (req, res) => {

   let status = req.query.status

    let promise = movieDAO.movieAllData(status)

    promise.then((data) => {
        res.send({
            data
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


        fs.renameSync('./upload/reying/' + file.filename, './upload/reying/' + file.originalname);


        res.set({
            'content-type': 'application/json;charset=utf-8'
        });

        imgUrl = 'http://localhost:3000/upload/' + file.originalname;




        //修改电影海报
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




//热映表修改
router.post('/reyingedit', (req, res) => {


    let movie = {
        img: req.query.img,
        movie_name: req.query.movie_name,
        movie_info: req.query.movie_info,
        tag: req.query.tag,
        movie_id: req.query.movie_id
    }

    let promise = movieDAO.movieReyingEdit(movie)

    promise.then((data) => {
        res.send({
            'code': 200,
            'msg': '修改成功'
        })
    })
})



//热映表插入电影
router.post('/reyinginsert', (req, res) => {

    let movie = {
        movie_name: req.query.movie_name,
        movie_info: req.query.movie_info,
        movie_id: req.query.movie_id,
        tag: req.query.tag,
        status:req.query.status
    }

    let promise = movieDAO.reyingInsert(movie)

    promise.then((data) => {
        res.send({
            'code': 200,
            'msg': '添加成功'
        })
    })
})


//热映表模糊查询
router.post('/searchname', (req, res) => {
    let movie={
        movie_name:req.query.movie_name,
        status:req.query.status
    }

    let promise = movieDAO.searchName(movie)

    promise.then((data) => {
        return res.send({
            'code': 200,
            data
        })
    })
})


//删除电影
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


//后台修改电影是上映还是未上映状态
router.post('/editstatus',(req,res)=>{
    let movie = {
        status:req.query.status,
        movie_id:req.query.movie_id
    }

    let promise = movieDAO.editstatus(movie)

    promise.then((data)=>{
        if(data.affectedRows==1){
            res.send({
                'code':200,
                'msg':'修改状态成功。'
            })
        }else{
            res.send({
                'code':400,
                'msg':'修改状态失败，检查后重新修改。'
            })
        }
    })
})


//后台热映排行榜搜索
router.post('/rysearch',(req,res)=>{
    let movie_name = req.query.movie_name

    let promise = movieDAO.searchry(movie_name)

    promise.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})

module.exports = router;