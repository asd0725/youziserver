const userDAO  = require('../dao/UserDAO2')


let user={
   username:'test',
   password:'123456'
}

userDAO.login(user).then((data)=>{
  console.log(data);
})
