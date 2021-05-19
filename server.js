const express = require('express');
const cors = require('cors')
const app = new express();

//const router_movie = require('./controller/movie')
const router_tabbar = require('./controller/tabbar')
const router_reying = require('./controller/reying')
const router_remnen = require('./controller/remen')
const router_koubei = require('./controller/koubei')
const router_tuijian = require('./controller/tuijian')
const router_comment = require('./controller/comment')
const router_user = require('./controller/user')
const router_movie_detail = require('./controller/movie_detail')
const router_movieBackuser = require('./controller/backuser')

app.use(cors());
//app.use('/api/movie',router_movie)
app.use('/api/tabbar',router_tabbar)
app.use('/api/reying',router_reying)
app.use('/api/remen',router_remnen)
app.use('/api/koubei',router_koubei)
app.use('/api/tuijian',router_tuijian)
app.use('/api/comment',router_comment)
app.use('/api/user',router_user)
app.use('/api/movie',router_movie_detail)
app.use('/api/backuser',router_movieBackuser)

app.use('/upload',express.static('upload/remen'))

app.listen(3000,(req,res)=>{
  console.log('server is running at 3000');
})

