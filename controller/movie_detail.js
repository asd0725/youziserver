const express = require('express');  // 引入web-express模块
let router = new express.Router();   // 引入路由机制

let fs = require('fs')
let multer = require('multer')

const movieDetail = require('../dao/movie_detail')

var upload = multer({ dest: 'upload/remen/' }).single('file')


router.get('/movieDetail', (req, res) => {
    let movie_id = req.query.movie_id;

    let promise = movieDetail.movieDetail(movie_id)

    promise.then((data) => {
        res.send({
            'code': 200,
            data: data
        })
    })
})

router.get('/movieDetailActor', (req, res) => {
    let movie_id = req.query.movie_id;

    let promise = movieDetail.movieDetailActtor(movie_id)

    promise.then((data) => {
        res.send({
            'code': 200,
            data: data
        })
    })
})



router.post('/altermovie', (req, res) => {
    let movie = {
        movie_id: req.query.movie_id,
        movie_name: req.query.movie_name,
        director: req.query.director,
        Screenwriter: req.query.Screenwriter,
        actor: req.query.actor,
        type: req.query.type,
        area: req.query.area,
        language: req.query.language,
        showtime: req.query.showtime,
        movietime: req.query.movietime,
        brief: req.query.brief,
    }

    let promise = movieDetail.moviealterdetail(movie)

    promise.then((data) => {
        if (data.affectedRows == 1) {
            res.send({
                'code': 200,
                'msg': '修改成功'
            })
        } else {
            res.send({
                'code': 400,
                'msg': '修改失败！检查后重新提交'
            })
        }

    })

})


router.post('/imgse', upload, async (req, res) => {
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

        let whete = req.body.whete
        if(!whete){
            let movie = {
                movie_img: imgUrl,
                movie_id: req.body.movie_id
            }
    
            let alertData = await movieDetail.alertimg(movie).catch(error => {
                throw error
            })
            console.log(alertData.affectedRows);
            if (alertData.affectedRows === 1) {
                res.send({
                    'code': 200,
                    'msg': "修改成功"
                })
            } else {
                res.send({
                    'code': 400,
                    'msg': '修改失败,检查后重新上传'
                })
            }
        }else{
            let movie = {
                movie_img: imgUrl,
                movie_id: req.body.movie_id
            }
    
            let alertData = await movieDetail.insertimg(movie).catch(error => {
                throw error
            })
            console.log(alertData.affectedRows);
            if (alertData.affectedRows === 1) {
                res.send({
                    'code': 200,
                    'msg': "添加成功"
                })
            } else {
                res.send({
                    'code': 400,
                    'msg': '添加失败,检查后重新上传'
                })
            }
        }

    }
})



router.post('/director', upload, async (req, res) => {
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



        let whete = req.body.whethe
        console.log(whete);
        if (!whete) {
            let movie = {
                movie_img: imgUrl,
                movie_id: req.body.movie_id,
                derive: req.body.derive
            }

            let alertData = await movieDetail.alertdirectorimg(movie).catch(error => {
                throw error
            })
            console.log(alertData.affectedRows);
            if (alertData.affectedRows === 1) {
                res.send({
                    'code': 200,
                    'msg': "修改成功"
                })
            } else {
                res.send({
                    'code': 400,
                    'msg': '修改失败,检查后重新上传'
                })
            }
        } else {
            console.log(imgUrl);
            let movie = {
                actor_img: imgUrl,
                movie_id: req.body.movie_id,
                derive: req.body.derive
            }

            let alertData = await movieDetail.insetdirector(movie).catch(error => {
                throw error
            })
            console.log(alertData.affectedRows);
            if (alertData.affectedRows === 1) {
                res.send({
                    'code': 200,
                    'msg': "添加成功"
                })
            } else {
                res.send({
                    'code': 400,
                    'msg': '添加失败,检查后重新上传'
                })
            }
        }

    }
})



router.post('/alteracotrinfo', (req, res) => {
    let movie = {
        actor_name: req.query.actor_name,
        actor_role: req.query.actor_role,
        movie_id: req.query.movie_id,
        derive: req.query.derive,
        whete: req.query.whete
    }

    let promise = movieDetail.alertactorinfo(movie)

    promise.then((data) => {
        if (data.affectedRows == 1) {
            res.send({
                'code': 200,
                'msg': '修改成功'
            })
        } else {
            res.send({
                'code': 400,
                'msg': '修改失败！检查后重新提交'
            })
        }
    })


})
module.exports = router;