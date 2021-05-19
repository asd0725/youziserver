const express = require('express');  // 引入web-express模块
let router = new express.Router();   // 引入路由机制

const movieDAO = require('../dao/comment')

router.get('/reping', (req, res) => {
    let promise = movieDAO.movieDataReping()

    promise.then((data) => {
        res.json({
            errno: 0,
            data: data
        })
    })
})

router.get('/allreping',(req,res)=>{
    let promise = movieDAO.movieData()

    promise.then((data)=>{
        res.json({
            errno:0,
            data:data
        })
    })
})

router.get('/comment',(req,res)=>{
    let user_id = req.query.user_id;
    // let user ={
    //     user_id = req.query.user_id,
    //     user_id1 = req.query.user_id
    // }

    let promise = movieDAO.movieComment(user_id)

    promise.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})

router.post('/insert',(req,res)=>{

    // img,user_img,user_name,rate,time,comment,zan,cai,movie_id,user_id
    let commentinfo = {
        img:req.query.img,
        user_img:req.query.user_img,
        user_name:req.query.user_name,
        rate:req.query.rate,
        time:req.query.time,
        comment:req.query.comment,
        movie_id:req.query.movie_id,
        user_id:req.query.user_id,
        movie_name:req.query.movie_name
    }

    let promise = movieDAO.movieInsertComment(commentinfo)

    promise.then((data)=>{
        res.json({
            'code':200,
            'msg':'插入数据成功'
        })
    })
})


//后台获取评论信息
router.get('/comments',(req,res)=>{
    let promise = movieDAO.moviecomments()

    promise.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})

//后台删除评论
router.post('/deletecomment',(req,res)=>{
    let comment_id = req.query.id

    let promise = movieDAO.deleteComment(comment_id)

    promise.then((data)=>{
        if(data.affectedRows ==1){
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
})



//后台评论排序
router.get('/order',(req,res)=>{
    let options = req.query.value;

    if(options =='选项1'){
        let promise = movieDAO.orderbyzan()

        promise.then((data)=>{
            res.send({
                'code':200,
                data
            })
        })
    }else if(options =='选项2'){
        let promise = movieDAO.orderbycai()

        promise.then((data)=>{
            res.send({
                'code':200,
                data
            })
        })
    }else if(options =='选项3'){
        let promise = movieDAO.ordertime()

        promise.then((data)=>{
            res.send({
                'code':200,
                data
            })
        })        
    }
})



//后台选择器选项
router.get('/seloptions',(req,res)=>{
    let promise = movieDAO.seloptions()

    promise.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})



//后台搜索评论
router.post('/searchcomment',(req,res)=>{
    let comment =req.query.comment;

    let promise = movieDAO.searchcomment(comment);

    promise.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})



//前台获取评论人数
router.post('/commentnumber',(req,res)=>{
    let comment = {
        movie_id:req.query.movie_id
    }

    let promise = movieDAO.commentNumber(comment)

    promise.then((data)=>{
        res.send({
            'code':200,
            data
        })
    })
})


//更新评论人数和平均分
router.post('/uptocomment',(req,res)=>{
    let movie = {
        people_number:req.query.people_number,
        rate:req.query.rate,
        movie_id:req.query.movie_id
    }

    let promise = movieDAO.uptormcomment(movie)

    promise.then((data)=>{
        res.send({
            'code':200,
            'msg':'修改成功'
        })
    })

})


router.post('/uptocommentry',(req,res)=>{
    let movie = {
        people_number:req.query.people_number,
        rate:req.query.rate,
        movie_id:req.query.movie_id
    }

    let promise = movieDAO.uptorycomment(movie)

    promise.then((data)=>{
        res.send({
            'code':200,
            'msg':'修改成功'
        })
    })
})



module.exports = router;



