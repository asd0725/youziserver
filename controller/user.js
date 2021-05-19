const express = require('express');  // 引入web-express模块
let router = new express.Router();   // 引入路由机制

let fs = require('fs')
let multer = require('multer')

const jwt = require("jsonwebtoken")

var upload = multer({ dest: 'upload/user' }).single('file')




const movieUser = require('../dao/user2');



router.post('/user', (req, res) => {
    let user = {
        user_ur: req.query.user_ur,
        password: req.query.password
    }

    let promise = movieUser.userData(user)


    promise.then((data) => {
        if (data == '') {
            return res.send({
                'code': 400,
                'msg': '账号或者密码错误！'
            })
        } else {
            let username = user.user_ur
            const token = jwt.sign({ username }, "yyjkn")
            return res.send({
                'code': 200,
                data: data,
                token
            })
        }
        // res.json({
        //     errno: 0,
        //     data: data
        // })
    })
})

router.post('/auth', (req, res) => {
    const token = req.query.token

    const username = jwt.verify(token, 'yyjkn')

    let user_ur = username.username

    if (user_ur) {
        let promise = movieUser.auth(user_ur)
        promise.then((data) => {
            if (data == '') {
                return res.send({
                    'code': 400,
                    'msg': 'token失效！'
                })
            }
            return res.send({
                'code': 200,
                data
            })
        })
    }
})

router.get('/reguserid', (req, res) => {
    let promise = movieUser.regUserlimit();

    promise.then((data) => {
        res.send({
            'code': 200,
            data
        })
    })
})


//验证用户名和昵称是否已被注册

function regif(user_namez, user_urz, user_info) {
    for (var item of user_info) {
        if (user_namez == item.user_name) {
            return false
        }
    }
    return true
}

router.get('/regagain', (req, res) => {
    let promise = movieUser.regUsername()

    promise.then((data) => {
        res.send({
            'code': 200,
            data
        })
    })
})


router.post('/reguser', async (req, res) => {
    let user_info = await movieUser.regUsername()

    let user_name = req.query.user_name;
    let user_ur = req.query.user_ur;
    let user_id = req.query.user_id;
    let user_img = req.query.user_img;
    let password = req.query.password;

    let outs = regif(user_name, user_ur, user_info)
    if (!outs) {
        res.send({
            'code': 400,
            'msg': '注册失败'
        })
    } else {
        let promise = movieUser.regUser(user_img, user_name, user_id, user_ur, password)
        promise.then((data) => {
            console.log("注册成功");
            res.send({
                'code': 200,
                'msg': '注册成功'
            })
        })
    }

})



router.get('/testss', (req, res) => {
    let promise = movieUser.testss()

    promise.then((data) => {
        res.send({
            'code': 200,
            data
        })
    })
})


router.post('/uptouserimg', upload, async (req, res) => {
    console.log(req.body.user_id);
    if (req.file.length === 0) {
        res.render("error", { message: '上传文件不能为空！' });
        return
    } else {
        let file = req.file;


        fs.renameSync('./upload/user/' + file.filename, './upload/user/' + file.originalname);


        res.set({
            'content-type': 'application/json;charset=utf-8'
        });

        imgUrl = 'http://localhost:3000/upload/' + file.originalname;


console.log(imgUrl);

            let user = {
                user_img: imgUrl,
                user_id: req.body.user_id
            }

            let promise = await movieUser.uptouserimg(user).catch(error=>{
                throw error
            })
            console.log(promise.affectedRows);
            if(promise.affectedRows ===1){
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

module.exports = router;