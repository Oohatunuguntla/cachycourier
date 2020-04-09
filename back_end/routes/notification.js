var express = require('express');
var router = express.Router();
const bcrypt = require('bcryptjs');
const notification=require('../models/notification');




router.get('/', async (req, res, next) => {
  //console.log(req.url)
  var decoded=decodeURIComponent(req.url)
  console.log(decoded)
  //List parts = req.url.Split(new char[] {'?','&'});
  email='oohas1234@gmail.com'
  notification.find({ email: email })
    .exec()
    .then(
      notifications=>{
      console.log(notifications);
      res.status(200).send({ notification: notifications });
      })

});
      
    


module.exports = router;